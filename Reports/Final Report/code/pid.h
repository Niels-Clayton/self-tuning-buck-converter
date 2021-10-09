#ifndef BUCK_CONVERTER_PID
#define BUCK_CONVERTER_PID

/*
 * PID Controller code structure designed by https://github.com/pms67 under the MIT licence
 * https://github.com/pms67/PID
 */
typedef struct
{

    /* Controller gains */
    float Kp;
    float Ki;
    float Kd;

    /* Derivative low-pass filter time constant */
    float tau;

    /* Output limits */
    float limMin;
    float limMax;

    /* Integrator limits */
    float limMinInt;
    float limMaxInt;

    /* Sample time (in seconds) */
    float T;

    /* Controller "memory" */
    float integrator;
    float prevError; /* Required for integrator */
    float differentiator;
    float prevMeasurement; /* Required for differentiator */

    /* Controller output */
    float out;

} PIDController;

#endif


#ifdef BUCK_CONVERTER_PID_IMPL

void PID_init(PIDController *pid){

    /* Clear controller variables */
    pid->integrator = 0.0f;
    pid->prevError = 0.0f;

    pid->differentiator = 0.0f;
    pid->prevMeasurement = 0.0f;

    pid->out = 0.0f;
}


void IRAM_ATTR PID_update(PIDController *pid, float setpoint, float measurement){

    // Error Signal
    float error = setpoint - measurement;

    // Proportional Signal
    float proportional = pid->Kp * error;

    // Integral Signal
    pid->integrator = pid->integrator + (pid->Ki * pid->T * (error + pid->prevError) * 0.5f);

    /* Anti-wind-up via integrator clamping */
    if (pid->integrator > pid->limMaxInt){
        pid->integrator = pid->limMaxInt;
    }

    else if (pid->integrator < pid->limMinInt){
        pid->integrator = pid->limMinInt;
    }

    // Derivative Signal with low pass filtering
    pid->differentiator = -(2.0f * pid->Kd * (measurement - pid->prevMeasurement) /* Note: derivative on measurement, therefore minus sign in front of equation! */
                          +(2.0f * pid->tau - pid->T) * pid->differentiator) /
                           (2.0f * pid->tau + pid->T);

    /*
	* Compute output and apply limits
	*/
    pid->out = proportional + pid->integrator + pid->differentiator;

    if (pid->out > pid->limMax){
        pid->out = pid->limMax;
    }

    else if (pid->out < pid->limMin){
        pid->out = pid->limMin;
    }

    /* Store error and measurement for later use */
    pid->prevError = error;
    pid->prevMeasurement = measurement;
}

#endif //BUCK_CONVERTER_PID