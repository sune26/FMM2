function y = myidft(z)
    N = length(z);
    y = mydft(z)
    y = conj(y)
    y = N*y;
end