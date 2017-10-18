y = rand(1,2^12);

tic
mydft(y);
toc

tic
myfft(y,2^12);
toc