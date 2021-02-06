function [sample_ID, date, meas] = FinalPart1(fpath)
%
[fid, msg] = fopen(fpath, 'r');

if fid == -1 
    disp(msg);
else
    
    fgetl(fid);
    fgetl(fid);
    fgetl(fid);
    
    aline = fgetl(fid);
    
    [~, date] = strtok(aline, ':');
    date = strtrim(date(2:end));
    
    aline = fgetl(fid);
    
    [~, sample_ID] = strtok(aline, ':');
    sample_ID = strtrim(sample_ID(2:end));
    sample_ID = str2double(sample_ID);
    
    fgetl(fid);
    aline = fgetl(fid);
    
    [~, meas] = strtok(aline, ':');
    meas = strtrim(meas(2:end));
    meas = str2num(meas);
    
    status = fclose(fid);
    if status == -1
        disp('The file cannot be closed.')
    end

end
end

