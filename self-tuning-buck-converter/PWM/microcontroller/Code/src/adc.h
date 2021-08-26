#ifndef BUCK_CONVERTER_ADC
#define BUCK_CONVERTER_ADC

#include <math.h>
#include "driver/adc.h" // Include the ACD driver

/*
 * Defines, variables, and functions for controlling the PWM setup
 */
#define SPAN 10  // Number of readings in the rolling average

volatile static int adc_average_buffer[AVG_POINT + 1] = {0}; // Circuilar buffer to hold the raw adc readings for averaging 

esp_err_t adc_init(); // Setup the adc to have a 12bit width, and 11dB attenuation

int adc_read(); // Read the raw value from the adc

/*  Compute the rolling average of the raw ADC values
 *  The circular buffer will store the index of the next element to be replaced in it's final index
 */
float rolling_average(int raw_value); 

/*
 * Compute the combersion from the adc reading to a voltage. 
 * The output of the adc has been characterised and then a polynomial has been fit to the curve.
 * This provides an error of < 1% for readings between 200mV and 3100mV
 */
float adc_conversion(float acd_reading);


#endif