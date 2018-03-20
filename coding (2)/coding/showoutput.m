function showoutput(MATRIX, mutil,machseq)
%creates gantt chart
creategantt(MATRIX);
%creates utility bar graph
utilgraph(mutil);
%creates load distribution graph
ldgraph(mutil);
f = figure('Position', [100 100 752 350]);
t = uitable('Parent', f, 'Position', [25 25 700 200]);
set(t, 'Data',machseq);
end