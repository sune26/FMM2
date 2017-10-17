function y = myidft(z)
    N = length(z);
    y = N*conj(mydft(conj(z)));
end