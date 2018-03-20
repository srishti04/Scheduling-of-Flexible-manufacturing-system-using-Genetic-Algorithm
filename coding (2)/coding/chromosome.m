function C = chromosome()
global  n p
C=zeros(1,n*p);
for i=0:p-1
    r=randperm(n);
    for j= 1:n
        C(j+i*n)=r(j);
    end
end 
end