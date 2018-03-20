function creategantt(ymatrix1)
global m
arr=zeros(1,m);
for i=1:m
    arr(i)=i;
end
% Create figure
figure1 = figure('PaperSize',[20.98 29.68],'Name','optimal gantt chart');
colormap('HSV');

% Create axes
axes1 = axes('Parent',figure1,'YTick',arr); %Create axes graphics object
box('on'); %Specifies whether to enclose the axes extent in a box for 2-D views or a cube for 3-D views. The default is to not display the box.
grid('on'); 
hold('all'); %Retain current graph when adding new graphs

% Create multiple lines using matrix input to bar
bar1 = bar(ymatrix1,'Horizontal','on','BarWidth',0.2,'BarLayout','stacked',...
    'Parent',axes1);
set(bar1(1),'DisplayName','M1(:,1)');
set(bar1(2),'DisplayName','M1(:,2)');
set(bar1(3),'DisplayName','M1(:,3)');
set(bar1(4),'DisplayName','M1(:,4)');
set(bar1(5),'DisplayName','M1(:,5)');
set(bar1(6),'DisplayName','M1(:,6)');
set(bar1(7),'DisplayName','M1(:,7)');
set(bar1(8),'DisplayName','M1(:,8)');

% Create xlabel
xlabel('Time');

% Create ylabel
ylabel('Machine');

% Create title
title({'Optimal Gantt Chart Schedule'});
end

