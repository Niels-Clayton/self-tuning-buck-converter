#ifndef BUCK_CONVERTER_ADC
#define BUCK_CONVERTER_ADC

#include <math.h>
#include "driver/adc.h" // Include the ACD driver

/*
 * Defines and variables
 */
#define SPAN 10  // Number of readings in the rolling average

volatile static int adc_average_buffer[SPAN + 1] = {0}; // Circuilar buffer to hold the raw adc readings for averaging 


/*
 * Setup the adc to have a 12bit width, and 11dB attenuation
 */
esp_err_t adc_init(){
    
    // ADC setup
    esp_err_t status; // Status variable to check if adc init was successful

    status = adc1_config_width(ADC_WIDTH_BIT_12); // Set adc width to 12 bits
    if(status != ESP_OK) return status;

    status = adc1_config_channel_atten(ADC1_CHANNEL_0 , ADC_ATTEN_11db); // Set adc attenuation to 11dB
    return status;
}


/*
 * Read the raw value from the adc
 */
int adc_read(){

    // Read the raw value from the adc
    return adc1_get_raw(ADC1_CHANNEL_0);
}

/* Compute the rolling average of the raw ADC values.
 *
 * The circular buffer will store the index of the next element to be 
 * replaced in it's final index.
 */
float rolling_average(int raw_value){

    // get the index of the value to replace, and then replace it
    int next_index = adc_average_buffer[SPAN];
    adc_average_buffer[next_index] = raw_value;

    // Increment the index of the last value and check if it past the end of the array
    next_index++;
    adc_average_buffer[SPAN] = (next_index >= SPAN) ? 0 : next_index;

    // Calculate the rolling average
    float total = 0;
    for(int i = 0; i < SPAN; i++){
        total = total + adc_average_buffer[i];
    }

    return total/SPAN;
}

/* Compute the combersion from the adc reading to a voltage. 
 * 
 * The output of the adc has been characterised and then a polynomial has been fit to the curve.
 * This provides an error of < 1% for readings between 200mV and 3100mV
 */
float adc_conversion(float acd_reading){
    return (pow(acd_reading , 4) * -7.6813211494455e-15) + 
           (pow(acd_reading , 3) *  5.03088719249885e-11) +
           (pow(acd_reading , 2) * -1.06609443189713e-7) +
           (0.00085850726668 * acd_reading) + 0.09077205072441;
}


#endif