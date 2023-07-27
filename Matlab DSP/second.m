clc;
clear all;
close all;
x=input('Enter input sequence:');
N=length(x);
disp(N)
subplot(3,2,1);
stem(x);
xlabel('n value');
ylabel('Amp');
title('Input value');
y=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        y(k+1)=y(k+1)+x(n+1)*exp((-2*i*pi*k*n)/N);
    end
end
disp('y=');
disp(y)
subplot(3,2,2);
stem(y);
xlabel('n value');
ylabel('Amp');
title('DFT value');
magnitude=abs(y);
subplot(3,2,3);
stem(magnitude);
xlabel('n value');
ylabel('Amp');
title('Magnitude');
z=phase(y);
subplot(3,2,4);
stem(z);
xlabel('n value');
ylabel('Amp');
title('phase');
%IDFT
N=length(y);
m=zeros(1,N);
for n=0:N-1
    for k=0:N-1
        m(n+1)=m(n+1)+((1/N)*(y(k+1)*exp((i*2*pi*k*n)/N)));
    end
end
disp('m=')
disp(m)
subplot(3,2,5);
stem(m);
xlabel('n value');
ylabel('Amp');
title('IDFT');