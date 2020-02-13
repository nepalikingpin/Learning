I=imread('D:\matlab\saugat.JPG');
imshow(I);
threshold=132;
[m,n]=size(I);
Ithresh=zeros(m,n);
for i=1:m
    for j=1:m
        if(I(i,j)>threshold)
            Ithresh(i,j)=1;
        else
            Ithresh(i,j)=0;
        end
    end
end
subplot(2,1,1);
imshow(I);
title('Input Image');
subplot(2,1,2);
imshow(Ithresh);
title('Threshold Image');