clear all;
clc;

task1b = importdata('part1a1.data');
task1c = importdata('part1c.data');

t_1b=task1b.data(:,1);
v_1b=task1b.data(:,2);
i_1b=task1b.data(:,5);

t_1c=task1c.data(:,1);
v_1c=task1c.data(:,2);
i_1c=task1c.data(:,5);

figure(1)
yyaxis left
plot(t_1b,v_1b);
ylabel('Voltage (V)');

yyaxis right
plot(t_1b,i_1b);
ylabel('Current (A)');
legend('voltage','current');
xlabel('time (ms)');
title('Task 1 B: Starting Transient');


figure(2)
yyaxis left
plot(t_1c,v_1c);
ylabel('Voltage (V)');

yyaxis right
plot(t_1c,i_1c);
ylabel('Current (A)');
legend('voltage','current');
xlabel('time (ms)');
title('Task 1 C: Starting Transient');
