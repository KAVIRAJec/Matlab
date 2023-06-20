clc;
clear all;
close all;

% fs = 512;                    % Sampling frequency (samples per second)
% dt = 1/fs;                   % seconds per sample
% StopTime = 0.25;             % seconds
% t = (0:dt:StopTime-dt)';     % seconds
% F = 60;                      % Sine wave frequency (hertz)
% data = cos(2*pi*F*t);
% plot(data)
% grid on

t=0:0.001:2;
F=1;
x=10*sin(2*pi*F*t);
figure;
subplot(6,2,1);
plot(t,x)
title('sine function');
%sine function
n = (0:0.2:10);
y=sin(n);
subplot(6,2,2);
stem(n,y);
xlabel('time');
ylabel('voltage');
title('sine function discrete');

t=0:0.001:2;
F=1;
x=10*cos(2*pi*F*t);
subplot(6,2,3);
plot(t,x)
title('cosine function');
%cosine function
n=(0:0.2:10);
y=cos(n);
subplot(6,2,4);
stem(n,y);
xlabel('time');
ylabel('voltage');
title('cosine function discrete');

t=0:0.001:2;
F=1;
x=10*2*t*pi;
subplot(6,2,5);
plot(t,x)
title('ramp function');
%Ramp signal 
n=(0:0.2:10);
y=2*n;
subplot(6,2,6);
stem(n,y);
xlabel('time');
ylabel('voltage');
title('ramp function discrete');

t=0:0.2:2;
F=1;
x=[1 1 1 1 1 1 1 1 1 1 1 ];
subplot(6,2,7);
plot(t,x)
title('unit step function');
%unit step
n=(0:0.2:1);
y=[1 1 1 1 1 1];
subplot(6,2,8);
stem(n,y);
xlabel('time');
ylabel('voltage');
title('step function discrete');

t=(0:0.1:10);
F=1;
x=exp(t);
subplot(6,2,9);
plot(t,x)
title('exponential function');
%exponential function
X = (0:0.1:10);
Y = exp(X);
subplot(6,2,10);
stem(X,Y);
xlabel('time');
ylabel('voltage');
title('exponential function discrete');

t = (-1:0.01:1)';
impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
subplot(6,2,11);
plot(t,[impulse unitstep ramp quad])
sqwave = 0.81*square(4*pi*t);
plot(t,sqwave)
title('Impulse function');
%impulse function
t = (0:0.02:1)';
impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
subplot(6,2,12);
stem(t,[impulse unitstep ramp quad])
sqwave = 0.81*square(4*pi*t);
stem(t,sqwave)
title('Impulse function');