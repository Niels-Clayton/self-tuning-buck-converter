clc;
clear;
load('pwm_data.mat');
x = 1/512:1/512:1;

start = 1;
stairs(x(start:end), target_duty(start:end))

%%
x = 1000:1:100000;

start = 1;
error = frequency_error(start:end)./x(start:end)'*100


figure
stairs(x(start:end), actual_frequency(start:end))

figure
stairs(x(start:end), error)

max(frequency_error)
