function C= mutation(C)
global n p  %ratemu
%r=ceil(10.*rand());
%if(r<=ratemu*10)
z = randperm(n*p);
C = C(z);
%for i=1:n*p
    %t=C[i];
    %C[i]=C[n*p-i];
    %C[n*p-i]=t;

%end
end
