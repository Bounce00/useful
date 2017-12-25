

 integer fid1;

 initial
	begin
			fid1=$fopen("r.bin","w");
	end
			
			
 always @ ( posedge clk_400K )
 begin
	if(segment_bpsk==5'b0)
		begin
			$fwrite(fid1,"%b\n",r);
		end
 end

// read in matlab
fid1=fopen('E:\zhj\code\ise_pro\BPSK_my2\pro\bpsk_test\lf_x.bin','rb');

k=1;
n=13;
while(k<=8192)
   a=fscanf(fid1,'%s',1); 
   data=bin2dec(a);
   if(data>=2^(n-1))
       lf_x_in(k)=-(2^n-data);
   else
       lf_x_in(k)=data;
   end
   k=k+1;
end

//read prn
sig = xlLoadChipScopeData('data.prn');

