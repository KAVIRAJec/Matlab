clc;
clear all;
close all;
Fs = 1000; %sampling frequency
Ts= 1/Fs; % sampling period or time step;
t= 0:Ts:2-Ts; % sampling duration
f1=10;
f2=50;
f3=70;
y1=10*sin(2*pi*f1*t);
y2=10*sin(2*pi*f2*t);
y3=10*sin(2*pi*f3*t);
y4=y1+y2+y3;
subplot(6,1,1);
plot(t,y1,'r');
subplot(6,1,2);
plot(t,y2,'b');
subplot(6,1,3);
plot(t,y3,'r');
subplot(6,1,4);
plot(t,y4,'r');
 nft=length(y4);
 nft2=2^nextpow2(nft);
 ff=fft(y4,nft2);
 fff=ff(1:nft2/2);
 subplot(6,1,5)
 plot(abs(ff));
 subplot(6,1,6);
 plot(abs(fff));
