function C= crossover(chrom)
%chrom=popgen();
global n p 
%select two chromosomes randomly from the population
C1=chrom((ceil(10.*rand())),:);
C2=chrom((ceil(10.*rand())),:);
%disp(C2);
%r=ceil(10.*rand());
C=zeros(1,n*p);%offspring
%if(r<=ratecr*10)
for i=1:n*p
    if(i<=(ceil(p/2)*n))
C(i)=C1(i);
    else
C(i)=C2(i);
    end
end
%else
 %   C=C1;
%disp(C);
end


