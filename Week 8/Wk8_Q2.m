function [M1, M2] = Wk8_Q2(filename)
%{
Extracts the Meas#1 and Meas#2 from all patients and 
calculate the mean values of Meas#1 and Meas#2.
%}
[fid, msg] = fopen(filename, 'r');

if fid == -1 
    disp(msg);
else
    for i = 1:6
        fgetl(fid);
    end
    
    d = textscan(fid, '%*d %*s %*s %f %f');
    for i = 1:8
        meas1(i) = d{1}(i);
        meas2(i) = d{2}(i);
    end
    
    M1 = mean(meas1);
    M2 = mean(meas2); 
    
    status = fclose(fid);
    if status == -1
        disp('The file cannot be closed.')
    end
    
end
end

