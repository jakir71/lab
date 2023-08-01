clc;
clear;
close all;
t=-100:1:100;
fm=0.02;
x=cos(2*pi*fm*t);
subplot(2,2,1);
plot(t,x);
xlabel('Time in sec');
ylabel('x(t)');
title('Continious Time Signal');

n1=-2:2;
fs1=0.02;
x1=cos(2*pi*fm*n1/fs1);
subplot(2,2,2);
stem(n1,x1);
hold on;
subplot(2,2,2);
plot(n1,x1,':');
xlabel(' n ');
ylabel('x(n)');
title('Descrete Time Signal(fs<2fm)');

n2=-4:4;
fs2=0.04;
x2=cos(2*pi*fm*n2/fs2);
subplot(2,2,3);
stem(n2,x2);
hold on;
subplot(2,2,3);
plot(n2,x2,':');
xlabel(' n ');
ylabel('x(n)');
title('Descrete Time Signal(fs=2fm)');


n3=-50:50;
fs3=0.5;
x3=cos(2*pi*fm*n3/fs3);
subplot(2,2,4);
stem(n3,x3);
hold on;
subplot(2,2,4);
grid on;
plot(n3,x3,':');
xlabel(' n ');
ylabel('x(n)');
title('Descrete Time Signal(fs>2fm)');
