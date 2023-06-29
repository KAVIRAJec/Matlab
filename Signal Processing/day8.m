% clc;
% clear all;
% close all;
% Fs=1000;
% Ts=1/Fs;
% dt=0:Ts:5-Ts;
% f1=10;
% y1=10*sin(2*pi*dt*f1);
% figure;
% plot(y1)
% nfft=length(y1);
% ff=fft(y1,nfft);
% fff=ff(1:nfft/2);
% figure;
% plot(abs(fff(1:500)));
% figure;
% m=ifft(fff);
% plot(real(m(1:500)));

clc;
clear all;
close all;
Fs=200e3;
Ts=1/Fs;
dt=0:Ts:5e-3-Ts;
f1=1e3;
f2=20e3;
f3=30e3;
y1=10*sin(2*pi*dt*f1);
y2=10*sin(2*pi*dt*f2);
y3=10*sin(2*pi*dt*f3);
y4=y1+y2+y3;
nfft=length(y4);
nfft2=2.^nextpow2(nfft);
fff=fft(y4,nfft2);
fff=fff(1:nfft2/2);

xfft=Fs.*(0:nfft2/2-1)/nfft2;
figure;
plot(xfft,abs(fff/max(fff)));

% % Low pass filter
cutoff=1e3/Fs/2;
order=32;
h=fir1(order,cutoff);
fh=fft(h,nfft2);
fh=fh(1:nfft2/2);
mul=fh.*fff;
figure;
subplot(2,1,1);
plot(xfft,abs(fff/max(fff)));
subplot(2,1,2);
plot(abs(mul))

% % Band pass filter
cutoff1=[19e3/Fs/2 21e3/Fs/2];
order1=64;
h1=fir1(order1,cutoff1);
fh1=fft(h1,nfft2);
fh1=fh1(1:nfft2/2);
mul1=fh1.*fff;
figure;
subplot(2,1,1);
plot(xfft,abs(fff/max(fff)));
subplot(2,1,2);
plot(abs(mul1))

% % High pass filter

% figure;
% m=ifft(fff);
% plot(real(m(1:500)));