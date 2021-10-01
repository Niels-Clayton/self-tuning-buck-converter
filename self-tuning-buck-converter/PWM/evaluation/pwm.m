clc;
clear;
load('pwm_data.mat');
x = 1/512:1/512:1;

start = 512*0.9;

figure(1)
subplot(2,1,1);
stairs(x(1:end), target_duty(1:end))
title(["Output PWM Duty Cycle vs Target Duty Cycle"])
xlabel("Output PWM Duty Cycle [%]");
ylabel("Target Duty Cycle [%]")

subplot(2,1,2);
stairs(x(1:end), target_duty(1:end))
xlim([0.9 1])
title(["90% - 100% Duty Cycle Range"])
xlabel("Output PWM Duty Cycle [%]");
ylabel("Target Duty Cycle [%]")



%%
x = 1000:1:100000;

start = 1;
error = frequency_error(start:end)./x(start:end)'*100;


figure(2)
stairs(x(start:end), actual_frequency(start:end))
title(["Output PWM Frequency vs Target Frequency"])
xlabel("Output PWM Frequency [Hz]");
ylabel("Target Frequency [Hz]")

figure(3)
stairs(x(start:end), error)
title(["Output PWM Frequency Error vs Target Frequency", "% of Ideal Output"])
xlabel("Target PWM Frequency [Hz]");
ylabel("Output Frequency Error [%]")

max(error)
