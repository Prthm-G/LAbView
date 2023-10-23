
clear all;
clc;
%%% Task 5A_3 %%%
T_fric = [0.172131798	0.204263067	0.224918883	0.236394336	0.243279608	0.245574699
];
n = [209	443	725	979	1266	1602
];
figure(6)
plot(n, T_fric, 'Linewidth', 2);
xlabel('n (rpm)');
ylabel('T_{fric} (N*m)');
title('Friction Torque vs Motor Speed Graph (No-Load)');
%%% Task 5A_4 %%%
in_data = importdata('TASK1_C.data');

Ea = in_data.data(:,2);
time = in_data.data(:,1);
kt = 0.229509064;

figure(1)
plot(time,Ea);
xlabel('time (ms)');
ylabel('Ea (V)');
title('Stopping Transient of Ea');
figure(2)
plot(time,Ea*60/(2*pi*kt));
xlabel('time (ms)');
ylabel('Wr (rpm)');
title('Stopping Transient of Wr');

%%% Task 5A_5 %%%
task1d_data = importdata("task_1d");
Ea = task1d_data.data(:,2);
time = task1d_data.data(:,1);
kt = 0.2178;
figure(3)
plot(time,Ea);
xlabel('time (ms)');
ylabel('Ea (V)');
title('Stopping Transient of Ea for Coupled Machines');
%%% Task 5A_6 %%%
task3a_data = importdata("task3b_data");
I_1 = task3a_data.data(:,4);
time = task3a_data.data(:,1)./1000;
V1 = task3a_data.data(:,2);
Kv = 0.22502;
Wr = task3a_data.data(:,6).*(2*pi/60);
n = task3a_data.data(:,6);
avg_n = mean(n)
avg_I_1 = mean(I_1)
didt = diff(I_1) ./ diff(time)
VLa = V1 - Kv .* Wr
didt_mean = mean(abs(didt))
La = abs(VLa(1:end-1)) ./ didt_mean
format long
La_final = mean(La)
%more accurate version
VLa_2 = V1 - Kv .* Wr - I_1*0.7395;
La_2 = abs(VLa_2(1:end-1)) ./ didt_mean;
format long
La_2_final = mean(La_2);
figure(4)
plot(time, I_1);
xlabel('time (ms)');
ylabel('Current (A)');
title('Current Ripple Graph');

%%% Task 5A_8 %%%
Tm = [0.25 0.39 0.59 0.72 0.85 1.12];
n = [172,436,717,950,1207,1749];
figure(5)
plot(n, Tm);
xlabel('Speed (rpm)');
ylabel('T_{m-load} (N*m)');
title('Mechanical Load Torque vs Speed');



