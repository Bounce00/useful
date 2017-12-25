
% write to file
fid=fopen('.\test.txt','w');
fprintf(fid,'%f\n',msg_ry);
fclose(fid);

% read from file
fid=fopen('.\test.txt','r');
msg_rx=fscanf(fid,'%f\n');
fclose(fid);


fid = fopen('fir_2M_4M.coe','wt');
for i=1:length(fir_16bits)
    fprintf(fid,'%d\t',fir_16bits(i)); 
end