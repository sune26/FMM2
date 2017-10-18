function y = myifft(z,N)
    y = N*conj(myfft(conj(z),N));
end