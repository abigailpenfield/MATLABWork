function [] = CreateImage(varargin)
%{
If no input, default image is shown. One input specifies size. Second input 
specifies color of middle stripe. Third input specifies color of top and 
bottom stripes. 
%}
if nargin == 0
    mat = ones(120);
    mat(1:40, :) = 0;
    mat(80:120, :) = 0;
    mycm = colormap([0 0 0; 1 1 1]);
    im = mat2gray(mat);
    imshow(im, 'colormap', mycm);
elseif nargin == 1
    size = varargin{1};
    mat = ones(size);
    first_row = size / 3;
    third_row = 2 * first_row;
    mat(1:first_row, :) = 0;
    mat(third_row:size, :) = 0;
    mycm = colormap([0 0 0; 1 1 1]);
    im = mat2gray(mat);
    imshow(im, 'colormap', mycm);
elseif nargin == 2
    size = varargin{1};
    color_m = varargin{2};
    mat = ones(size);
    first_row = size / 3;
    third_row = 2 * first_row;
    mat(1:floor(first_row), :) = 0;
    mat(floor(third_row):size, :) = 0;
    mycm = colormap([0 0 0; color_m]);
    im = mat2gray(mat);
    imshow(im, 'colormap', mycm);
elseif nargin == 3
    size = varargin{1};
    color_m = varargin{2};
    color_tb = varargin{3};
    mat = ones(size);
    first_row = size / 3;
    third_row = 2 * first_row;
    mat(1:floor(first_row), :) = 0;
    mat(floor(third_row):size, :) = 0;
    mycm = colormap([color_tb; color_m]);
    im = mat2gray(mat);
    imshow(im, 'colormap', mycm);
end
end

