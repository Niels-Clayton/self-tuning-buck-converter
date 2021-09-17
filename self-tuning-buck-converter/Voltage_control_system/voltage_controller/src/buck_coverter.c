// Project includes
#define BUCK_CONVERTER_PWM_IMPL
#define BUCK_CONVERTER_ADC_IMPL
#define BUCK_CONVERTER_PID_IMPL

#include "buck_converter.h"

void init_buck()
{
    // PWM set up
    PWM_setup(&pwm_timer, &pwm_channel, 10000, 0);
}



/*
 * Output voltage PID control loop.
 * This function initialises the PID controller, and the internal ADC on the ESP32.
 * It will then enter the main control loop, and will compute the following:
 *      
 *      - Read the current buck converter load voltage. This is Measured using the 
 *        ESP32 ADC, through the voltage divider defined by R1 and R2.
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
    QueueHandle_t target_voltage_queue = *(QueueHandle_t*)pvParameters;

    /* 
     *  ADC set up and local variables
     */ 
    uint16_t adc_raw;
    float adc_voltage;
    float load_voltage;
    float measurment_duty;
    
    // Setup adc struct for reading the load voltage
    esp_adc v_load = {
        // adc input channel 0 (GPIO 36)  
        .adc_channel = 0,

        // do not allow for a rolling average
        .span = 0,
        .buffer = NULL
    };

    // Init the adc and check to see if it was successful
    if (adc_init(&v_load) != ESP_OK) 
    {
        printf("ADC init error!\n"); // If set up fails print the error
        vTaskDelete(NULL);
    }

    /* 
     *  PID set up
     */
    float target_voltage;
    float target_duty = VO / VI; // Calculate the target duty cycle for the controller

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

        adc_raw = adc_read(&v_load);                   // Take an adc reading
        adc_voltage = adc_conversion(adc_raw);         // Convert this value to the voltage at the adc
        load_voltage = (adc_voltage * (R1 + R2)) / R2; // Convert to the voltage at the buck converter load
        measurment_duty = load_voltage / VI;           // Calculate the duty theoretical duty cycle of the output

        // Check for a new target voltage
        if (uxQueueMessagesWaiting(target_voltage_queue))
        {   // If there is a new target voltage read it
            if (xQueueReceive(target_voltage_queue, &target_voltage, (TickType_t)1))
            {
                target_duty = target_voltage / VI;
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
