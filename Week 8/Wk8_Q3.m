function [num, avg] = Wk8_Q3(fp)
%Returns number and mean of all elements in data file.
[fid, msg] = fopen(fp, 'r');

if fid == -1 
    disp(msg);
else
    readdata = fread(fid, 'uint8');
    num = length(readdata);
    avg = mean(readdata);
    
    status = fclose(fid);
    if status == -1
        disp('The file cannot be closed.')
    end
end
end

