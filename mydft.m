function z = mydft(y)
% Compute the DFT of a vector y of length N
% z k = 1/N sum {1=0}ˆ{N-1}y 1 exp(-2 pi k 1/N)
N = length(y);
omega = exp (2.*pi.*i./N)% here i is the imaginary unit