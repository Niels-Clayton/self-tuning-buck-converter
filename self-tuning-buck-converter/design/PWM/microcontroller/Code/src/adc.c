#include "adc.h"

esp_err_t adc_init(){
    // ADC setup
    esp_err_t status; // Status variable to check if adc init was successful

    status = adc1_config_width(ADC_WIDTH_BIT_12); // Set adc width to 12 bits
    if(status != ESP_OK) return status;

    status = adc1_config_channel_atten(ADC1_CHANNEL_0 , ADC_ATTEN_11db); // Set adc attenuation to 11dB
    return status;
}


int adc_read(){
    // Read the raw value from the adc
    return adc1_get_raw(ADC1_CHANNEL_0);
}


float rolling_average(int raw_value){
    // get the index of the value to replace, and then replace it
    int next_index = adc_average_buffer[AVG_POINT];
    adc_average_buffer[next_index] = raw_value;

    // Increment the index of the last value and check if it past the end of the array
    next_index++;
    adc_average_buffer[AVG_POINT] = (next_index >= AVG_POINT) ? 0 : next_index;

    // Calculate the rolling average
    float total = 0;
    for(int i = 0; i < AVG_POINT; i++){
        total = total + adc_average_buffer[i];
    }

    return total/AVG_POINT;
}


float adc_conversion(float acd_reading){
    return (pow(acd_reading , 4) * -7.6813211494455e-15) + 
           (pow(acd_reading , 3) *  5.03088719249885e-11) +
           (pow(acd_reading , 2) * -1.06609443189713e-7) +
           (0.00085850726668 * acd_reading) + 0.09077205072441;
}