// Include single header library function implementations
#define BUCK_CONVERTER_PWM_IMPL
#define BUCK_CONVERTER_ADC_IMPL
#define BUCK_CONVERTER_PID_IMPL

#include "buck_converter.h"

void init_buck()
{
    // PWM set up
    PWM_setup(&pwm_timer, &pwm_channel, 97000, 0);
}

/*
 * Output voltage PID control loop.
 * This function initialises the PID controller, and the internal ADC on the ESP32.
 * It will then enter the main control loop, and will compute the following:
 *      
 *      - Read the current buck converter load voltage. This is Measured using the 
 *        ESP32 ADC, through the voltage divider defined by LOAD_R1 and LOAD_R2.
 * 
 *      - Calculate the equivalent duty cycle that would be used to produce the 
 *        current measured load voltage.
 * 
 *      - Pass the target duty cycle, and current duty cycle through the PID controller
 * 
 *      - Update the buck converter duty cycle with the new controller output
 * 
 *      - Delay the task until the selected sample period defined by TS has elapsed
 */

void control_loop(void *pvParameters)
{
    /* 
     *  Setup an input queue for receiving new target voltages 
     */
    QueueHandle_t target_voltage_queue = *(QueueHandle_t *)pvParameters;

    /* 
     *  Load voltage ADC set up and local variables
     */
    uint16_t supply_voltage_buffer[5] = {0}; // Supply voltage rolling average buffer

    // Variables for storage and conversion of load voltage
    uint16_t load_adc_raw;
    float load_adc_voltage;
    float load_voltage;
    float measurment_duty;

    // Variables for storage and conversion of
    uint16_t supply_adc_raw;
    float supply_adc_voltage;
    float supply_voltage;

    // Initialise the ADC structs
    esp_adc v_load = {// Create adc struct for reading the load voltage
                      // adc input channel 0 (GPIO 36)
                      .adc_channel = 0,

                      // do not allow for a rolling average
                      .span = 0,
                      .buffer = NULL};

    esp_adc v_supply = {// Create adc struct for reading the supply voltage
                        // adc input channel 6 (GPIO 34)
                        .adc_channel = 6,

                        // 5 wide rolling average
                        .span = 5,
                        .buffer = (uint16_t *)&supply_voltage_buffer};

    // Init the load voltage adc and check to see if it was successful
    if (adc_init(&v_load) != ESP_OK)
    {
        printf("Load voltage ADC init error!\n"); // If set up fails print the error
        vTaskDelete(NULL);
    }

    // Init the supply voltage adc and check to see if it was successful
    if (adc_init(&v_supply) != ESP_OK)
    {
        printf("Supply voltage ADC init error!\n"); // If set up fails print the error
        vTaskDelete(NULL);
    }

    /* 
     *  PID set up
     */
    float target_voltage = VO;
    float target_duty;

    // Create the PID struct
    PIDController voltage_controller = {
        // Controller gains
        .Kp = KP,
        .Ki = KI,
        .Kd = KD,

        // Differentiator low pass filter corner frequency
        .tau = 0.0f,

        // Min and max output duty cycles
        .limMin = 0.0f,  // 0% duty cycle
        .limMax = 0.98f, // 95% duty cycle

        // Integrator wind-up min and max
        .limMinInt = -5.0f,
        .limMaxInt = 5.0f,

        // Sample time period
        .T = TS / 100.0f,
    };

    // initialise the PID controller
    PID_controller_init(&voltage_controller);

    // Task variables
    TickType_t xLastWakeTime; // Hold the time stamp of the last wake time

    // Enter the PID control loop
    while (true)
    {

        xLastWakeTime = xTaskGetTickCount(); // Store the current tick count

        // Read the supply voltage ADC
        supply_adc_raw = adc_read(&v_supply);
        supply_adc_raw = rolling_average(&v_supply, supply_adc_raw);
        supply_adc_voltage = adc_conversion(supply_adc_raw);
        supply_voltage = (supply_adc_voltage * (SUPPLY_R1 + SUPPLY_R2)) / SUPPLY_R2;

        // Read the load voltage ADC
        load_adc_raw = adc_read(&v_load);                                  // Take an adc reading
        load_adc_voltage = adc_conversion(load_adc_raw);                   // Convert this value to the voltage at the adc
        load_voltage = (load_adc_voltage * (LOAD_R1 + LOAD_R2)) / LOAD_R2; // Convert to the voltage at the buck converter load

        // Calculate the measured duty cycle and target duty cycle
        measurment_duty = load_voltage / supply_voltage; // Calculate the duty theoretical duty cycle of the output
        target_duty = target_voltage / supply_voltage;   // Calculate the target duty cycle for the controller

        // Check for a new target voltage
        if (uxQueueMessagesWaiting(target_voltage_queue))
        { // If there is a new target voltage read it
            if (xQueueReceive(target_voltage_queue, &target_voltage, (TickType_t)1))
            {
                target_duty = target_voltage / supply_voltage;
            }
        }

        // Update the duty cycle with the PID controller
        PID_controller_update(&voltage_controller, target_duty, measurment_duty);

        // Output the new duty cycle
        PWM_set_duty(&pwm_channel, voltage_controller.out);

        // Delay task until the provided time period is reached
        vTaskDelayUntil(&xLastWakeTime, TS);
    }
}
