clc;
clear all;
close all;
a=[1 2;3 4];
b=[4;5];
X=(a^-1)*b
%a^-1,invert(a),a\b,linesolve(a,b)

%2x-y+3z=5
%4x+5z=12
%x+y+2z=-3
A=[2 -1 3;4 0 5;1 1 2];
B=[5;12;-3];
Y=(A^-1)*B
%linear eqn
W=[2 -1 0;-1 3 -1;0 -1 2];
S=[5;0;6];
Z=(W^-1)*S
%eqn2
A = [3 -1 -2;-1 6 -3;-2 -3 6];
B = [1;0;6];
Z = A^-1*B-
