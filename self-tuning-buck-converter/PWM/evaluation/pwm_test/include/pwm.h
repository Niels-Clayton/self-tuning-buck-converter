#ifndef BUCK_CONVERTER_PWM
#define BUCK_CONVERTER_PWM

// Hardware driver includes
#include "driver/ledc.h" 

/*
 * PWM set up defines and helper macros
 */
#define DUTY_RESOLUTION LEDC_TIMER_9_BIT
#define FREQUENCY_MIN   1000
#define FREQUENCY_MAX   100000
#define DUTY_STEPS      512
#define DUTY(X)         ((1.0 - X) * DUTY_STEPS) // Duty cycle calculation macro

#endif


#ifdef BUCK_CONVERTER_PWM_IMPL

/*
 *   Set up the PWM timer and channel structs, and configure the PWM output
 */

void PWM_setup(ledc_timer_config_t *pwm_timer, ledc_channel_config_t *pwm_channel, uint32_t frequency, float duty_cycle){

    // Select and set up the PWM clock source and initial frequency
    ledc_timer_config_t timer = {
        .duty_resolution = DUTY_RESOLUTION,    // resolution of PWM duty
        .freq_hz = frequency,                  // frequency of PWM signal
        .speed_mode = LEDC_HIGH_SPEED_MODE,    // timer mode
        .timer_num = LEDC_TIMER_0,             // timer index
        .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
    };

    // Select and set up the PWM output channel and initial duty cycle
    ledc_channel_config_t channel = {
        .channel    = LEDC_CHANNEL_0,          // PWM output channel (0 - 4)
        .duty       = DUTY(duty_cycle),        // PWM duty cycle 
        .gpio_num   = 23,                      // PWM output GPIO
        .speed_mode = LEDC_HIGH_SPEED_MODE,    // PWM output mode
        .timer_sel  = LEDC_TIMER_0             // PWM timer index
    };

    *pwm_timer = timer;
    *pwm_channel = channel;

    ledc_timer_config(pwm_timer);
    ledc_channel_config(pwm_channel);
}

/*
 *   Set a new PWM duty cycle for a given PWM channel
 */

esp_err_t PWM_set_duty(ledc_channel_config_t *pwm_channel, float duty_cycle){
    
    // Set the new PWM Duty Cycle of the given channel configuration
    ledc_set_duty(pwm_channel -> speed_mode, pwm_channel -> channel, DUTY(duty_cycle));

    // Update the PWM channel with the new configuration 
    return ledc_update_duty(pwm_channel -> speed_mode, pwm_channel ->channel);
}


/*
 *   Set a new PWM frequency for a given PWM channel
 */

esp_err_t PWM_set_frequency(ledc_channel_config_t *pwm_channel, ledc_timer_config_t *pwm_timer, uint32_t frequency){

    if(frequency > FREQUENCY_MAX || frequency < FREQUENCY_MIN)
    {
        printf("Specified input frequency not within possible range: %d - %d\n", FREQUENCY_MIN, FREQUENCY_MAX);
        return ESP_ERR_INVALID_ARG;
    }
    
    // Set the new PWM frequency of the given channel and timer configuration
    return ledc_set_freq(pwm_channel -> speed_mode, pwm_timer -> timer_num, frequency);
}

#endif // BUCK_CONVERTER_PWM

