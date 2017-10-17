function y = myidft(z)
    N = length(z);
    y = N*mydft(conj(z));
end