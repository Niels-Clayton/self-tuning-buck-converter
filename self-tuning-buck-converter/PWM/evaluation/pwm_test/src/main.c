// Standard includes for math and print functions
#include <stdio.h>
#include <math.h>

// RTOS includes for error messages and task handeling
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_err.h"

// project includes
#define BUCK_CONVERTER_PWM_IMPL
#include "pwm.h"

#define DUTY_TEST
// #define FREQUENCY_TEST

#define FREQUENCY_MIN 1000
#define FREQUENCY_MAX 100000

ledc_timer_config_t pwm_timer;     // Create the PWM timer struct
ledc_channel_config_t pwm_channel; // Create the PWM channel struct

void app_main() 
{
    /* 
     *  PWM setup
     */

    PWM_setup(&pwm_timer, &pwm_channel, 1000, 0.5f);


    #ifdef DUTY_TEST
    printf("Actual,Target\n");
    for(int duty = 0; duty < 512; duty++){
        
        PWM_set_duty(&pwm_channel, 1-(1.0f/512.0f)*duty);
        printf("%f,%f\n", 1.0f - (1.0f / (float)ledc_get_duty(pwm_channel.speed_mode, pwm_timer.timer_num)), (1.0f/512.0f)*duty);
    }
    #endif

    #ifdef FREQUENCY_TEST

    printf("Actual,Target\n");
    for(int frequency = FREQUENCY_MIN; frequency <= FREQUENCY_MAX; frequency = frequency+1){

        PWM_set_frequency(&pwm_channel, &pwm_timer, frequency);

        printf("%d,%d\n", ledc_get_freq(pwm_channel.speed_mode, pwm_timer.timer_num), frequency);
    }

    #endif
}