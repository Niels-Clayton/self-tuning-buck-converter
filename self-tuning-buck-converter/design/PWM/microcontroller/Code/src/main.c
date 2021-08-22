// Standard includes for math and print functions
#include <stdio.h>
#include <math.h>

// RTOS includes for error messages and task handeling
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_err.h"

// Hardware driver includes
#include "driver/ledc.h"    // Include the PWM driver

// Project includes
#include "adc.h"


// #define DUTY_TEST
// #define FREQUENCY_TEST

/*
 * Defines and functions for controlling the PWM setup
 */
#define DUTY_RESOLUTION LEDC_TIMER_9_BIT
#define FREQUENCY_MIN 1000
#define FREQUENCY_MAX 100000
#define DUTY_STEPS 512

/*
 * Defines for ADC conversion
 */

#define R1 (float)51400
#define R2 (float)22000


void app_main() 
{
    /* 
     *  PWM setup
     */
    const TickType_t xDelay = (10 / portTICK_PERIOD_MS);

    ledc_timer_config_t ledc_timer = {
        .duty_resolution = DUTY_RESOLUTION,    // resolution of PWM duty
        .freq_hz = 10000,                     // frequency of PWM signal
        .speed_mode = LEDC_HIGH_SPEED_MODE,    // timer mode
        .timer_num = LEDC_TIMER_0,             // timer index
        .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
    };

    ledc_channel_config_t ledc_channel = {
        .channel    = LEDC_CHANNEL_0,
        .duty       = (100.0 - 50.0) * DUTY_STEPS / 100.0,
        .gpio_num   = 23,
        .speed_mode = LEDC_HIGH_SPEED_MODE,
        .timer_sel  = LEDC_TIMER_0
    };

    ledc_timer_config(&ledc_timer);
    ledc_channel_config(&ledc_channel);

    /* 
     *  ADC setup
     */

    // Init the adc and check to see if it was successful
    esp_err_t adc_status = adc_init();
    if(adc_status != ESP_OK){
        printf("ADC init error\nESP error code: %d",adc_status); // If setup fails print the error
        return;
    }


    while (true)
    {
        #ifdef DUTY_TEST
        for(int duty = 0; duty < DUTY_STEPS; duty++){
            
            ledc_set_duty(ledc_channel.speed_mode, ledc_channel.channel, duty);
            ledc_update_duty(ledc_channel.speed_mode, ledc_channel.channel);
            vTaskDelay(xDelay);
        }
        #endif

        #ifdef FREQUENCY_TEST

        for(int frequency = FREQUENCY_MIN; frequency <= FREQUENCY_MAX; frequency = frequency+10){

            esp_err_t status = ledc_set_freq(ledc_channel.speed_mode, ledc_timer.timer_num, frequency);
            printf("PWM frequency: %d  ->  %d\n", ledc_get_freq(ledc_channel.speed_mode, ledc_timer.timer_num), status);
            // vTaskDelay(xDelay);
        }
        #endif

        // ADC testing code
        
        int adc_raw = adc_read(); // Take an adc reading
        float adc_average = rolling_average(adc_raw); // Take a rolling average of this value to remove noise
        float adc_voltage = adc_conversion(adc_average); // Convert this value to the voltage at the adc
        float load_voltage = (adc_voltage * (R1 + R2))/R2; // Convert to the voltage at the buck converter load

        printf("%f\n", load_voltage);
        vTaskDelay(xDelay*1);

    }
}