function chrom = popgen()
global n p
%population generation
chrom=zeros(10,n*p);
for i=1:10
T=chromosome();
for j=1:n*p
    chrom(i,j)=T(j);
end
end
end