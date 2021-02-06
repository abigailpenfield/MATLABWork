function [type] = CheckImage(filename)
%Checks and returns type of (color or gray) of input image
info = imfinfo(filename);
type = info.ColorType;
type = string(type);
if type == "grayscale"
    type = "gray";
elseif type == "truecolor"
    type = "true color";
end
end

