% main program for project Job Shop Scheduling Problem using Delay
% Constraints with Genetic Algorithms
function main()
%global variables
global n m p M D S val bk mbk

%fuction to take input from user
getinput();

%initialization of variables
finalms=20000;
%finaltotal=40000;
%total=40000;
MATRIX=zeros(m,(n*p));
CHROMO=zeros(1,n*p);
matime= zeros(1,m);
mutil=zeros(1,m);
fmutil=0;
famutil=0;
minmk=200000;
maxmutil=0;
check=0;
makespan=200000;
amutil=0;
%checking for existence of breakdown
bk=rand;
bk=bk*10;
bk=ceil(bk);
mbk=mod(bk,2);
if(mbk==0)
    disp('breakdown occurs');
    figure,imshow('brkdown.jpg')
    %call breakd module
    breakd();
    exit(code);
else
    figure,imshow('nobrkd.jpg')
    disp('no breakdown occurs');

end


%iterations for genetic algorithm
for itr=1:val
    disp('iteration number');
    disp(itr);

%population initialisation 
chrom=popgen();
%and crossover
C=crossover(chrom);

%mutation
C=mutation(C);

%display chromosome
disp(C); 

M1=calcshed(C);
disp(M1);

if(nonzerocomp(M1)~=(n*p))
    disp('rejected infeasible schedule');
else
    check=check+1;
    s= zeros(1,m);
     for i=1:m
     for j=1:n*p
    s(i)= s(i)+M1(i,j);
     end
     end
     disp('per machine time:');
    disp(s);
    makespan = max(s);
    disp('local makespan:');
    disp(makespan);
    mutil=s*100/makespan;
    disp(mutil);
    amutil=sum(mutil)/m;
    disp(amutil);
    
end   

if((minmk>=makespan))
    minmk=makespan;
end

if((maxmutil<=amutil))
    maxmutil=amutil;
end


if(nonzerocomp(M1)==(n*p))
if((finalms>=makespan)&& (amutil>=famutil))
    finalms=makespan;
    matime=s;
    fmutil=mutil;
    famutil=amutil;
    MATRIX=M1;
    CHROMO=C;
end
end

end

if(check~=0)

disp('***************************************************************');
disp('max util');
disp(maxmutil);
disp('min makespan');
disp(minmk);
disp('***************************************************************');
disp('MOST OPTIMAL SCHEDULE');
disp('FINAL MAKESPAN:');
disp(finalms);
disp('MACHINE WORKING TIME');
disp(matime);
disp('PER MACHINE UTILIZATION');
disp(fmutil);
disp('AVERAGE UTILIZATION');
disp(famutil);
disp('FINAL CHROMOSOME');
disp(CHROMO);
disp('FINAL MATRIX');
disp(MATRIX);
disp('****************************************************************')

machseq=zeros(m,ceil(n*p/m));
machseq=machineseq(machseq, MATRIX, CHROMO);
disp('JOB SEQUENCE ON MACHINE');
disp(machseq);

%output graphs
showoutput(MATRIX, fmutil,machseq);
else
    disp('cannot generate solution ,increase iteration number');
end
end


