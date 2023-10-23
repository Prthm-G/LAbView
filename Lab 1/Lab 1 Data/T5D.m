%%%%%%%%%%%%%%%
% Task 5A
%%%%%%%%%%%%%%%

clear all;
clc;

% Step 3

in_data = importdata('1crl');

t  = in_data.data(:, 1);
v1 = in_data.data(:, 2);
%v2 = in_datda.data(:, 3);
%v3 = in_datda.data(:, 4);
i1 = in_data.data(:, 5);
%i2 = in_data.data(:, 6);
%i3 = in_data.data(:, 7);

p1 = v1;


figure(1);
clf;

subplot(3,1,1);
plot(t, p1);
hold on;
yline(0, '--');
ylabel("Voltage V");
xlabel("Time (ms)");
%title("Instantaneous Power");

