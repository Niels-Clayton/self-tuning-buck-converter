// Standard includes for math and print functions
#include <stdio.h>
#include <math.h>

// RTOS includes for error messages and task handeling
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_err.h"

// project includes
#include "pwm.h"

// #define DUTY_TEST
#define FREQUENCY_TEST

#define FREQUENCY_MIN 1000
#define FREQUENCY_MAX 100000

ledc_timer_config_t pwm_timer;     // Create the PWM timer struct
ledc_channel_config_t pwm_channel; // Create the PWM channel struct

void app_main() 
{
    /* 
     *  PWM setup
     */

    PWM_setup(&pwm_timer, &pwm_channel, 10000, 0.5f);

    esp_err_t status;

    while (true)
    {
        #ifdef DUTY_TEST
        for(int duty = 0; duty < 100; duty++){
            
            PWM_set_duty(&pwm_channel, duty/100.0f);
            vTaskDelay(1);
        }
        #endif

        #ifdef FREQUENCY_TEST

        for(int frequency = FREQUENCY_MIN; frequency <= FREQUENCY_MAX; frequency = frequency+10){

            status = PWM_set_frequency(&pwm_channel, &pwm_timer, frequency);

            printf("PWM frequency: %d  ->  %d\n", ledc_get_freq(pwm_channel.speed_mode, pwm_timer.timer_num), status);
            // vTaskDelay(1);
        }

        #endif
    }
}