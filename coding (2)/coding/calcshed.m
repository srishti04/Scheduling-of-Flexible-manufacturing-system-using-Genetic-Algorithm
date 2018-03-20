function M1= calcshed(C)
global m n p M D S
M1=zeros(m,(n*p));
k=1;
flag=0;
flg=zeros(1,m);
for j=1:(n*p)
    while((k<=m) && (flag==0))
    if(M(C(j),k)~=9999)
      nonz=nonzero(k,M1);
     if(nonz< ceil((n*p)/m)) 
         if(flg(k)==0)
             disp(S(k));
         M1(k,j)=M(C(j),k)+D(C(j),k)+S(k);
         flg(k)=1;% visited
           else
         M1(k,j)=M(C(j),k)+D(C(j),k); %do not take the setup time  
         end   
         flag=1;
     else
         k=k+1;%go to next machine
     end   
     else 
         k=k+1;
    end
    end
    flag=0;%reset
    k=1;%reset
end
end