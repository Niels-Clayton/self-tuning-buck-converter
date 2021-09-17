#ifndef BUCK_CONVERTER
#define BUCK_CONVERTER

// Project includes
#include "pwm.h"
#include "adc.h"
#include "pid.h"

// Standard includes for math and print functions
#include <stdio.h>
#include <math.h>
#include <string.h>

// RTOS includes for error messages and task handling
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "esp_err.h"

void init_buck();
void control_loop(void *pvParameters);

/*
 * PWM timer and channel structs
 */
ledc_timer_config_t pwm_timer;     // Create the PWM timer struct
ledc_channel_config_t pwm_channel; // Create the PWM channel struct

/*
 * Constants for ADC conversion
 */
static const float R1 = 56237.0f; // Voltage divider values from buck output load
static const float R2 = 22035.0f + 995.2f;

// Internal esp ADC structs
esp_adc v_supply;

/*
 * Constants, functions, and variables for PID controller
 */
static const float VI = 12.0f; // The input voltage of the converter. This should ideally be sampled using the ADC
static const float VO = 3.3f;  // The desired output of the converter.

// Controller gains
static const float KP = 0.16f;
static const float KI = 17.1f;
static const float KD = 0.0f;

// Controller Sample time period in ms
static const float TS = 2.0f;

#endif // BUCK_CONVERTER