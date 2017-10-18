clear all
fid = fopen('filtre.data','r'); % open filter.data
Y = fscanf(fid,'%f',[1 inf]); % read filter.data
fclose(fid)
figure
plot(Y) % plot filter.data
Z = myfft(Y,length(Y));

for j = 1:length(Z)
    if (abs(Z(j)) < 0.02)
        Z(j) = 0;
    end
end

Y = real(myifft(Z,length(Z)));

figure
plot(Y)