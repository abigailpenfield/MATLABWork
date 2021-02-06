function [] = randimg(size, varargin)
%{
Shows a square "random" image. Needs at least one input argument which is
size of image in pixels. Default is black-white. If second input argument is 
provided, it will be colormap. 
%}
mycm = [0 0 0; 1 1 1]; %default
c_num = 2;
if nargin == 2
    mycm = varargin{1};
    c_num = length(mycm);
end
mat = randi(c_num, size);
cm = colormap(mycm);
imshow(mat, 'colormap', cm);
end

