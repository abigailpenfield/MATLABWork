function [] = Wk8_Q1(original_fp, new_fp)
%{
Function reads every line from this file, 
adds a line index at the beginning of each line (e.g. Department #1), and 
saves the new lines to a new file.
%}
[fid1, msg1] = fopen(original_fp, 'r');
[fid2, msg2] = fopen(new_fp, 'wt');

if fid1 == -1 || fid2 == -1
    disp(strcat(msg1, msg2));
else
    fgetl(fid1);
    aline = fgetl(fid1);
    i = 1;
    while aline ~= -1
        fprintf(fid2, 'Department #%d: %s\n', i, aline);
        i = i + 1;
        aline = fgetl(fid1); 
    end
    
    status1 = fclose(fid1);
    status2 = fclose(fid2);
    if status1 == -1 || status2 == -1
        disp('The file cannot be closed.')
    end
    
end

