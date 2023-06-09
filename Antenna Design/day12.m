clc;
clear all;
close all;
m=monopole('GroundPlaneLength',2.5,'GroundPlaneWidth',2.5);
figure
show(m)
figure
patternElevation (m,75e6)
figure
patternAzimuth (m,75e6)
figure
pattern (m,75e3)
figure;
returnLoss (m, 50e6:1e6:100e6);