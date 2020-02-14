a= imread('D:\Matlab Lab/helloworld.jpg');
for n=1:256
    c=0;
for i=1:256
    for j=1:256
        if n ==a(i,j)
            c=c+1;
        end
    end
end
    hist(n)=c;
end
x=1:1:255;
stem(x,hist(x));

title('histogramofimage');