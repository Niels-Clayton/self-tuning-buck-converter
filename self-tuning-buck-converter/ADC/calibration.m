clc;
clear;
load('adc_characterisation.mat');

x = 0:1:power(2,12);
ideal = (0:1:power(2,12)) *(3.3/power(2,12));

p = polyfit(ADC_raw, V_in, 4);
poly = polyval(p, x);

hold on

plot(x, poly)
plot(x, ideal)
plot(ADC_raw, V_in)

hold off