#ifndef BUCK_CONVERTER_ADC
#define BUCK_CONVERTER_ADC

#include <math.h>
#include "driver/adc.h" // Include the ADC driver

/*
 * ADC struct to hold setup data
 */
typedef struct esp_adc
{
    // Rolling average buffer
    uint16_t *buffer;
    uint8_t span;

    // ADC channel to sample
    uint8_t adc_channel;

} esp_adc;

#endif // BUCK_CONVERTER_ADC


#ifdef BUCK_CONVERTER_ADC_IMPL

/*
 * Set up the adc to have a 12bit width, and 11dB attenuation
 */
esp_err_t adc_init(esp_adc* adc){
    
    // ADC set up
    esp_err_t status; // Status variable to check if adc initialisation was successful

    status = adc1_config_width(ADC_WIDTH_BIT_12); // Set adc width to 12 bits
    if(status != ESP_OK) return status;

    status = adc1_config_channel_atten(adc->adc_channel, ADC_ATTEN_11db); // Set adc attenuation to 11dB
    return status;
}


/*
 * Read the raw value from the adc
 */
uint16_t adc_read(esp_adc* adc){
    // Read the raw value from the provided adc channel
    return adc1_get_raw(adc->adc_channel);
}

/* Compute the rolling average of the raw ADC values.
 *
 * The circular buffer will store the index of the next element to be 
 * replaced in it's final index.
 */
float rolling_average(esp_adc* adc, int raw_value){

    // Check if there is an averaging buffer
    if(adc->span == 0)
    {
        printf("Can not compute average with a span of 0\n");
        return -1;
    }

    // get the index of the value to replace, and then replace it
    int next_index = adc->buffer[adc->span];
    adc->buffer[next_index] = raw_value;

    // Increment the index of the last value and check if it past the end of the array
    next_index++;
    adc->buffer[adc->span] = (next_index >= adc->span) ? 0 : next_index;

    // Calculate the rolling average
    float total = 0;
    for(int i = 0; i < adc->span; i++)
    {
        total = total + adc->buffer[i];
    }

    return total/adc->span;
}

/* Compute the conversion from the adc reading to a voltage. 
 * 
 * The output of the adc has been characterised and then a polynomial has been fit to the curve.
 * This provides an error of < 1% for readings between 200mV and 3100mV
 */
 float IRAM_ATTR adc_conversion(float acd_reading)
{
    return (pow(acd_reading , 4) * -7.6813211494455e-15) + 
           (pow(acd_reading , 3) *  5.03088719249885e-11) +
           (pow(acd_reading , 2) * -1.06609443189713e-7) +
           (0.00085850726668 * acd_reading) + 0.09077205072441;
}

#endif
