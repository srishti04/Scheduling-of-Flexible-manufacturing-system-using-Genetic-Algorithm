function temp = nonzerocomp(M1)
global p n m 
temp=0;
for k=1:m
for i=1:n*p
if(M1(k,i) >0)
temp=temp+1;
end
end
end
 end