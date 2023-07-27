clc
clear
t=0:0.01:1;
a=2;
b=a*sin(2*pi*2*t);
subplot(3,3,1);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave');
 
t=0:0.01:1;
a=2;
b=a*cos(2*pi*2*t);
subplot(3,3,2);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Cosine wave');
 
n=-5:5;
a=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,4);
stem(n,a);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse');
 
n=-5:5;
a=[zeros(1,5),ones(1,6)];
subplot(3,3,5);
stem(n,a);
xlabel('Time');
ylabel('Amplitude');
title('Unit step');
 
t=0:0.01:1;
a=2;
b=a*square(2*pi*2*t);
subplot(3,3,7);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Square wave');
 
t=0:0.01:1;
a=2;
b=a*exp(2*pi*2*t);
subplot(3,3,8);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Exponential Wave');
