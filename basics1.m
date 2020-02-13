%extracting properties of images
%info = imfinfo('D:\matlab\saugat.JPG');
%image_Name = info.Filename;
%image_size = info.FileSize;
%image_width = info.Width;
%image_height = info.Height;
%image_format = info.Format;
%info_codingmethod = info.CodingMethod;
%info_codingprocess = info.CodingProcess;


%reading and changing format

image = imread('D:\matlab\saugat.JPG');
imwrite(image,'D:\anil.png','png');
imshow(image);