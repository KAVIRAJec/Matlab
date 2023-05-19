clc;
clear all;
close all;
% rand(2,2)
% randi(2,3)
B = randi(10,20,7)
% plot(B,'*-k','LineWidth',3);
c=B';
figure
subplot(3,3,1); plot(c(1,:));
subplot(3,3,2); plot(c(2,:));
subplot(3,3,3); plot(c(3,:));
subplot(3,3,4); plot(c(4,:));
subplot(3,3,5); plot(c(5,:));
subplot(3,3,6); plot(c(6,:));
subplot(3,3,7); plot(c(7,:));
