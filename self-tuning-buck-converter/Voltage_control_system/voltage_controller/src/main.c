// Standard includes for math and print functions
#include <stdio.h>
#include <math.h>

// RTOS includes for error messages and task handling
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "esp_err.h"

// Project includes
#include "pwm.h"
#include "adc.h"
#include "pid.h"


/*
 * Defines for ADC conversion
 */
#define R1 51400.0f  // Voltage divider values from buck output load
#define R2 22000.0f


/*
 * Defines and variables for PWM output
 */
#define PWM_BASE_FREQUENCY 100000
#define PWM_BASE_DUTY 0  //Set the base duty cycle to 0 to stop the system responding before the controller initialisation has occurred

ledc_timer_config_t pwm_timer;     // Create the PWM timer struct
ledc_channel_config_t pwm_channel; // Create the PWM channel struct


/*
 * Defines, functions, and variables for PID controller
 */
#define VI 12.0f  // The input voltage of the converter. This should ideally be sampled using the ADC 
#define VO 10.0f   // The desired output of the converter.

// Controller gains
#define KP 0.16f 
#define KI 17.1f
#define KD 0.0f

// Controller Sample time period in ms
#define TS 2.0f


// Output voltage control loop function
void control_loop();


/*
 * Create task queues
 */
QueueHandle_t target_voltage_queue;


/*
 * Main Program 
 */

void app_main() {

    // initialise the queues
    target_voltage_queue = xQueueCreate(5, sizeof(float));

    // PWM set up
    PWM_setup(&pwm_timer, &pwm_channel, PWM_BASE_FREQUENCY, PWM_BASE_DUTY); 

    // Declare task handles
    TaskHandle_t VO_controller = NULL;

    // Create the output voltage control task
    xTaskCreatePinnedToCore(control_loop,       // Voltage control loop function
                            "Vout_controller",  // Task name
                            2048,               // Task stack size
                            (void *) NULL,      // Function parameters
                            2,                  // Priority of the task (app_main has priority 1)
                            &VO_controller,     // Task handle
                            tskNO_AFFINITY);    // Core the task has been pinned to (No core selected)
    
    
    
    // test the queue
    float v_out = 6.0f;
    xQueueSend(target_voltage_queue, (void *) &v_out, (TickType_t) 1);

    vTaskDelay(50);

    v_out = 2.0f;
    xQueueSend(target_voltage_queue, (void *) &v_out, (TickType_t) 1);
    
    
    while (true)
    {
        // printf("task stack unused: %d\n\n", uxTaskGetStackHighWaterMark(VO_controller));
        vTaskDelay(100);
    }
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

void control_loop(){

    /* 
     *  PID set up
     */
    float target_voltage;
    float target_duty = VO/VI; // Calculate the target duty cycle for the controller

    // Create the PID struct
    PIDController voltage_controller = {
        // Controller gains
        .Kp = KP,
        .Ki = KI,
        .Kd = KD,

        // Differentiator low pass filter corner frequency
        .tau = 0.0f,

        // Min and max output duty cycles
        .limMin = 0.0f,     // 0% duty cycle
        .limMax = 0.95f,    // 95% duty cycle

        // Integrator wind-up min and max
        .limMinInt = -5.0f,
        .limMaxInt =  5.0f,

        // Sample time period
        .T = TS/100.0f,
    };

    // initialise the PID controller
    PIDController_Init(&voltage_controller);


    /* 
     *  ADC set up
     */
    esp_err_t adc_status = adc_init(VO); // Init the adc and check to see if it was successful
    if(adc_status != ESP_OK){
        printf("ADC init error\nESP error code: %d",adc_status); // If set up fails print the error
        return;
    }

    // Declare variables for the ADC readings
    int adc_raw;
    float adc_voltage;
    float load_voltage;
    float measurment_duty;

    // Task variables
    TickType_t xLastWakeTime; // Hold the time stamp of the last wake time

    /* 
     *  Enter the PID control loop
     */
    while (true) {

        xLastWakeTime = xTaskGetTickCount(); // Store the current tick count

        adc_raw = adc_read(); // Take an adc reading
        // float adc_average = rolling_average(adc_raw); // Take a rolling average of this value 
        adc_voltage = adc_conversion(adc_raw); // Convert this value to the voltage at the adc
        load_voltage = (adc_voltage * (R1 + R2))/R2; // Convert to the voltage at the buck converter load
        measurment_duty = load_voltage / VI; // Calculate the duty theoretical duty cycle of the output

        // Check for a new target voltage
        if( uxQueueMessagesWaiting(target_voltage_queue) ){ // If there is a new target voltage read it
            if( xQueueReceive(target_voltage_queue, &target_voltage, ( TickType_t )1) ){
                printf("%f\n", target_voltage);
                target_duty = target_voltage/VI;
            }
        }

        // Update the duty cycle with the PID controller
        PIDController_Update(&voltage_controller, target_duty, measurment_duty);

        // Output the new duty cycle 
        PWM_set_duty(&pwm_channel, voltage_controller.out);

        // Delay task until the provided time period is reached
        vTaskDelayUntil(&xLastWakeTime, TS);
    }
}