%%%%%%%%%%%%%%%
% Task 5E
%%%%%%%%%%%%%%%

clear all;
clc;

in_data = importdata('3_ac_ar_data');

t  = in_data.data(:, 1);
%v1 = in_data.data(:, 2);
%v2 = in_datda.data(:, 3);
%v3 = in_datda.data(:, 4);
i1 = in_data.data(:, 5);
%i2 = in_data.data(:, 6);
i3 = in_data.data(:, 7);

figure(1);
clf;
plot(t, i1);
hold on;
%plot(t, i3);
%hold on;
xlim([t(1), t(end)]);
legend("i1 (input)", "i3 (output)");
ylabel("Current (A)");
xlabel("Time (ms)");
title("Fully Loaded Rectifier w/o filtering");

% Calculate and plot DFT
T  = t(2)-t(1);        % Sampling period
Fs = 1/T;              % Sampling freq
L  = t(end)-0;         % Length of signal

Y = fft(i1);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

figure(2);
clf;
f = Fs*(0:(L/2))/L * pi;
plot(f,P1./max(P1));
hold on;
xlim([f(1), f(end)]);
title("Frequency Spectrum of Input Current");
xlabel("f (Hz)");
ylabel("FFT Amplitude (Normalized)");
