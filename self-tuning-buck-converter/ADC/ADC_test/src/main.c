// Standard includes for math and print functions
#include <stdio.h>
#include <math.h>

// RTOS includes for error messages and task handeling
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_err.h"

// Project includes
#include "adc.h"

/*
 * Defines for ADC conversion
 */

// Voltage divider from buck output load
#define R1 (float)51400  
#define R2 (float)22000

void app_main(){

    /* 
     *  ADC setup
     */
    uint16_t test_buffer[5] = {0};

    esp_adc v_test = {
        // Sample ADC Channel 0 (GPIO 36)
        .adc_channel = 0,
        // Set the span of the rolling average buffer
        .span = 5,
        .buffer = &test_buffer
    };


    esp_err_t adc_status = adc_init(&v_test);     // Init adc channel 0, and check to see if it was successful
    if(adc_status != ESP_OK){
        printf("ADC init error:      ESP error code: %d\n",adc_status); // If setup fails print the error
        return;
    }

    while (true)
    {
        // ADC testing code
        int adc_raw = adc_read(&v_test); // Take an adc reading
        float adc_average = rolling_average(&v_test, adc_raw); // Take a rolling average of this value to remove noise

        if(adc_average == -1)
        {
            adc_average = adc_raw;
            printf("Rolling average computation failed!\n");
        }

        float adc_voltage = adc_conversion(adc_average); // Convert this value to the voltage at the adc
        float load_voltage = (adc_voltage * (R1 + R2))/R2; // Convert to the voltage at the buck converter load

        printf("%f\n", load_voltage);
        vTaskDelay(100);
    }
}