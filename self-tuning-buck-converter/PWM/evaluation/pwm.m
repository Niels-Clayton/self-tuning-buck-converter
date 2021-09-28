clc;
clear;
load('pwm_data.mat');
x = 1/512:1/512:1;

start = 1;
stairs(x(start:end), target_duty(start:end))

%%
x = 1000:1:100000;

start = 1;

figure(1)
stairs(x(start:end), actual_frequency(start:end))

figure(2)
stairs(x(start:end), frequency_error(start:end))
