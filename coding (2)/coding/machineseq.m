function machseq = machineseq(machseq,MATRIX,CHROMO)
global m n p
k=1;
l=1;
for i=1:m
    for j=1:(n*p)
        if(MATRIX(i,j)~=0)
        machseq(k,l)=CHROMO(j);
        l=l+1;
        end
    end
    k=k+1;
    l=1;
end  
end