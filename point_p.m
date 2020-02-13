x=imread('D:\matlab\saugat.JPG');
x=rgb2gray(x);
x=im2double(x);
[row,col] =size(x);
for i=1:row 
    for j=1:col
        N(i,j)=1-x(i,j);
    end
end
subplot(1,2,1);
imshow(x);
title('Original Image');
subplot(1,2,2);
imshow(N);
title('Negative Image');