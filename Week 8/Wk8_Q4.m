function [zipcode, data] = Wk8_Q4(fp)
%Extracts zipcode and temperature data.
[fid, msg] = fopen(fp, 'r');
if fid == -1
    msgbox(msg)
else
    aline = fgetl(fid);
    [~, zipcode] = strtok(aline, ' ');
    zipcode = strtrim(zipcode(2:end));
    zipcode = str2double(zipcode);
    
    fgetl(fid);
    fgetl(fid);
    
    data = [];
    aline = fgetl(fid);
    data = str2double(strsplit(aline));
    
end

