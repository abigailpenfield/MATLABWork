function [MaxChannel, MeanInt] = ColorChannel(filename)
%{
If image is a gray scale image, function returns the string “gray” as the 1st output 
arg, and the mean pixel value as 2nd output arg. If image is a true color image, 
function will calculate the mean pixel values for the r, g, & b channels of the 
image. Function will return the color channel w/ the highest mean intensity as 1st 
output arg, and the corresponding mean pixel value as 2nd output arg.  
%}
im = imread(filename);
info = imfinfo(filename);
type = info.ColorType;
type = string(type);
if type == "grayscale"
    MaxChannel = "gray";
    MeanInt = mean(im(:));
elseif type == "truecolor"
    imr = im(:, :, 1);
    img = im(:, :, 2);
    imb = im(:, :, 3);
    imr_mean = mean(imr, 'all');
    img_mean = mean(img, 'all');
    imb_mean = mean(imb, 'all');
    if imr_mean > img_mean && imr_mean > imb_mean
        MaxChannel = "red";
        MeanInt = imr_mean;
    elseif img_mean > imb_mean && img_mean > imr_mean
        MaxChannel = "green";
        MeanInt = img_mean;
    elseif imb_mean > imr_mean && imb_mean > img_mean
        MaxChannel = "blue";
        MeanInt = imb_blue;
    end
end 
end

