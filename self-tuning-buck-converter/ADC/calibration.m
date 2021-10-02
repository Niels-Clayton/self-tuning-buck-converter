clc;
clear;
load('adc_characterisation.mat');

x = 0:1:power(2,12);
ideal = (0:1:power(2,12)) *(3.3/power(2,12));

p = polyfit(ADC_raw, V_in, 4);
poly = polyval(p, x);

figure('Renderer', 'painters', 'Position', [100 100 1100 800])
hold on
plot(x, ideal)
plot(ADC_raw, V_in, 'o')
plot(x, poly)
xlabel("Raw ADC Conversion Output", 'FontSize', 12)
ylabel("ADC Input Voltage [V]", 'FontSize', 12)
txt = {'Polynomial:', texlabel([num2str(p(1)) 'x^4 + ' num2str(p(2)) 'x^3 ' num2str(p(3)) 'x^2 + ' num2str(p(4)) 'x + ' num2str(p(5))]) };
text(200, 2.8, txt, 'FontSize', 12)
legend("Ideal ADC Conversion", "Actual ADC Conversion", "Fit Polinomial", 'FontSize', 12)
title("ESP32 Internal ADC Calibration", 'FontSize', 20)
set(gca, 'FontSize', 12)
hold off