 clc ;
 clear all; 
 close all;
m = input('enter the value of row: ');
n = input('enter the value of column: ');
for i = 1:m;
    for j = 1:n;
        a(i,j)=input('enter the value: ');
    end
end
 
c = a
c2= c.^2
a = c + c2
b = c - c2
d = c * c2
e = c / c2