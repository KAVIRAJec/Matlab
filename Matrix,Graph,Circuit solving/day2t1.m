clc;
clear all;
close all;
D= xlsread('C:\Users\Administrator\Downloads\degree day data.xlsx','A1:M3');
for  i=1:2
    for j=1:size(D,2)
        ddcooling(i,j)=(D(i,j)-65)*31;
    end 
end
%
plot(ddcooling(1,:),'*-r');hold on;
plot(ddcooling(2,:),'*-g');hold on;
plot(ddcooling(3,:),'*-b');hold on;
plot(ddcooling(       6        4,:),'*-k');hold on;
xlabel('month');
ylabel('temperature');
legend('coimbatore','erode');


% plot(D(1,:),'g','LineWidth',3);
% set(gca, 'LineWidth', 2)
% hold on
% plot(D(2,:),'LineWidth',3);
% xlabel('City')
% ylabel ('Month')
% legend('Temperature(Coimbatore)','Temperature(Erode)');