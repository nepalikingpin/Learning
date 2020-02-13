I = imread('D:\matlab\saugat.JPG');
[m,n] = size(I);
x1= input(' Enter  x1:  ');
x2 = input('Enter x2: ');
y1 = input('Enter y1: ');
y2 = input('Enter y2: ');
slope1=y1/x1;
slope2= (y2-y1)/(x2-x1);
slope3= (255-y2)/(255-x2);
Intercept1= y1-slope2*x1;
Intercept2= y2-slope3*x2;
ICS = zeros(m,n);
for i=1:m
    for j=1:n
        if (I(i,j) >0 && I(i,j)<x1)
            ICS(i,j) = slope1* I(i,j);
            elseif (I(i,j) >x1 && I(i,j) <x2)
                ICS(i,j) = slope2* I(i,j) + Intercept1;
                 elseif (I(i,j) >x2 && I(i,j) <255)
                    ICS(i,j) = slope3*I(i,j) + Intercept2;
        end
   end
end
        
subplot(1,2,1);
imshow(I);
title('Original Image');
subplot(1,2,2);
imshow(uint8(ICS));                            
title('Output Image');