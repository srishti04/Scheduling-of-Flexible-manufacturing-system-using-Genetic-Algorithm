function ldgraph(mutil)
global m
LABEL=zeros(1,m);
for i=1:m
    LABEL(i)=i;
end    
figure;pie(mutil,LABEL);
colormap hot;
title('load distribution graph');
end