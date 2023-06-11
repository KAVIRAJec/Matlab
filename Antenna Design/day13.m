clc;
clear all;
close all;
ant=fractalGasket;
ant.NumIterations=4;
ant.Side=0.5;

figure;show(ant);
figure
patternElevation(ant,2.4e9)
figure
patternAzimuth(ant,2.4e9)
figure
pattern(ant,1.2e9)
figure;
returnLoss(ant,2e9:0.05e9:3e9);