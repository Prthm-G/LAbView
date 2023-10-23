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
pavg = mean(p1);
qavg = max(p1-pavg);

p_reactive = p1 - pavg;

figure(1);
clf;

subplot(3,1,1);
plot(t, p1);
hold on;
yline(0, '--');
ylabel("Power (W)");
xlabel("Time (ms)");
title("Instantaneous Power");

subplot(3,1,2);
yline(pavg, 'linewidth', 3);
hold on;
yline(0, '--');
ylabel("Power (W)");
xlabel("Time (ms)");
title("Average Real Power");

subplot(3,1,3);
yline(0, 'linewidth', 3);
hold on;
yline(0, '--');
ylabel("Power (VA)");
xlabel("Time (ms)");
title("Reactive Power");


% Step 4

in_data = importdata('1cr+l');

t  = in_data.data(:, 1);
v1 = in_data.data(:, 2);
i1 = in_data.data(:, 5);

p1 = v1 .* i1;

pavg = mean(p1);
qavg = max(p1-pavg);

p_reactive = p1 - pavg;

figure(2);
clf;

subplot(3,1,1);
plot(t, p1);
hold on;
yline(0, '--');
ylabel("Power (W)");
xlabel("Time (ms)");
title("Instantaneous Power");

subplot(3,1,2);
yline(pavg, 'linewidth', 3);
hold on;
yline(0, '--');
ylabel("Power (W)");
xlabel("Time (ms)");
title("Average Real Power");

subplot(3,1,3);
plot(t, p_reactive);
hold on;
yline(0, '--');
ylabel("Power (VA)");
xlabel("Time (ms)");
title("Reactive Power");


% Step 4

in_data = importdata('1crlc');

t  = in_data.data(:, 1);
v1 = in_data.data(:, 2);
%v2 = in_datda.data(:, 3);
%v3 = in_datda.data(:, 4);
i1 = in_data.data(:, 5);
%i2 = in_data.data(:, 6);
%i3 = in_data.data(:, 7);

p1 = v1 .* i1;
pavg = mean(p1);
qavg = max(p1-pavg);

p_reactive = p1 - pavg;

figure(3);
clf;

subplot(3,1,1);
plot(t, p1);
hold on;
yline(0, '--');
ylabel("Power (W)");
xlabel("Time (ms)");
title("Instantaneous Power");

subplot(3,1,2);
yline(pavg, 'linewidth', 3);
hold on;
yline(0, '--');
ylabel("Power (W)");
xlabel("Time (ms)");
title("Average Real Power");

subplot(3,1,3);
plot(t, p_reactive);
hold on;
yline(0, '--');
ylabel("Power (VA)");
xlabel("Time (ms)");
title("Reactive Power");

% Create phasor diagram for Task 1C, step 5, (measurements from Table 3)
phasor_diagram(9.78,-0.9,9.74,-241.5,9.78,-121.6,0.27,-52,0.28,69.9,0.49,-121.8);
%title("Phasor diagram for Task 1C, step 5")


function [] = phasor_diagram(V1m,V1p,I1m,I1p,I2m,I2p,I3m,I3p,I4m,I4p,I5m,I5p)
    V1 = V1m*cos(V1p*pi/180) + i*V1m*sin(V1p*pi/180);
    % current magnitudes multiplied by 10 so one can see them on the plot
    I1 = I1m*cos(I1p*pi/180) + i*I1m*sin(I1p*pi/180);
    I2 = I2m*cos(I2p*pi/180) + i*I2m*sin(I2p*pi/180);
    I3 = I3m*10*cos(I3p*pi/180) + i*I3m*10*sin(I3p*pi/180);
    I4 = I4m*10*cos(I4p*pi/180) + i*I4m*10*sin(I4p*pi/180);
    I5 = I5m*10*cos(I5p*pi/180) + i*I5m*10*sin(I5p*pi/180);


    figure()
    compass(V1,"r"); hold on
    compass(I1,"b"); hold on
    compass(I2,"c"); hold on
    compass(I3,"r"); hold on
    compass(I4,"b"); hold on
       compass(I5,"c"); hold on
          %compass(I3,"g"); hold on
    legend(["V1","V2","V3","I1","I2",'I3'])
end