clc;
clear all;
close all;
x=imread('C:\Users\Student\Downloads\Your-image.jpeg');
imshow(x);
figure;
se=strel('disk',35);
bg=imopen(x,se);
x2=x-bg;
imshow(x2);
figure;
x4=rgb2gray(x2);
x3= (x4);
imshow(x3);
bw=imbinarize(x3);
bw=bwareaopen(bw,50);
cc=bwconncomp(bw,4);
cc.NumObjects;
