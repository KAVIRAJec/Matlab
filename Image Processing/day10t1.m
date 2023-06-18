I = imread('C:\Users\Student\Downloads\kavi.png');
imshow(I)
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
tiledlayout(1,2)

nexttile
imshow(BW1)
title('Sobel Filter')

nexttile
imshow(BW2)
title('Canny Filter')