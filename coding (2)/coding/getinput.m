function getinput()
global m n p M D S file
a=xlsread(file);

%number of machines
m=a(1,1);

%number of jobs
n=a(2,1);

%number of pieces per job
p=a(3,1);

%matrix for time per job
for i=1:n
    for j=1:m
        M(i,j)=a(i+3,j);
    end
end

%matrix for delay per job
for i=1:n
    for j=1:m
        D(i,j)=a(i+n+3,j);
    end
end
%matrix for setup per m/c
for j=1:m
        S(j)=a((2*n)+4,j);
end
%disp(S);
end