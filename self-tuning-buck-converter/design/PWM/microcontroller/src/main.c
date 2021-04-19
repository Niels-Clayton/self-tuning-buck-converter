
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/ledc.h"
#include "esp_err.h"

#define DUTY_TEST
// #define FREQUENCY_TEST

#define DUTY_RESOLUTION LEDC_TIMER_8_BIT
#define FREQUENCY_MIN 1000
#define FREQUENCY_MAX 100000

void app_main() 
{

    const TickType_t xDelay = (10 / portTICK_PERIOD_MS);

    ledc_timer_config_t ledc_timer = {
        .duty_resolution = DUTY_RESOLUTION,    // resolution of PWM duty
        .freq_hz = 1000,                     // frequency of PWM signal
        .speed_mode = LEDC_HIGH_SPEED_MODE,    // timer mode
        .timer_num = LEDC_TIMER_0,             // timer index
        .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
    };

    ledc_channel_config_t ledc_channel = {
        .channel    = LEDC_CHANNEL_0,
        .duty       = 128,
        .gpio_num   = 23,
        .speed_mode = LEDC_HIGH_SPEED_MODE,
        .timer_sel  = LEDC_TIMER_0
    };

    ledc_timer_config(&ledc_timer);
    ledc_channel_config(&ledc_channel);

    while (true)
    {

        #ifdef DUTY_TEST
        for(int duty = 0; duty < 255; duty++){
            
            ledc_set_duty(ledc_channel.speed_mode, ledc_channel.channel, duty);
            ledc_update_duty(ledc_channel.speed_mode, ledc_channel.channel);
            vTaskDelay(xDelay);
        }
        #endif

        #ifdef FREQUENCY_TEST

        for(int frequency = FREQUENCY_MIN; frequency <= FREQUENCY_MAX; frequency = frequency+1){

            esp_err_t status = ledc_set_freq(ledc_channel.speed_mode, ledc_timer.timer_num, frequency);
            printf("PWM frequency: %d  ->  %d\n", ledc_get_freq(ledc_channel.speed_mode, ledc_timer.timer_num), status);
        }
        #endif
    }
}