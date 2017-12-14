
% write to file
fid=fopen('.\test.txt','w');
fprintf(fid,'%f\n',msg_ry);
fclose(fid);

% read from file
fid=fopen('.\test.txt','r');
msg_rx=fscanf(fid,'%f\n');
fclose(fid);