clear all
fid = fopen('filter.data','r'); % open filter.data
Y = fscanf(fid,'%f','%f',[1 inf]); % read filter.data
fclose(fid)
figure
plot(Y) % plot filter.data
..
if (abs(Z(j)) < ..) % cut-off low frequencies
Z(j) = 0;