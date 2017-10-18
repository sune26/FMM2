function Z=myfft(y,N)
    if N==1
       Z=y;
    else

       Ze= myfft(y(1:2:N),N/2); % The even entries
       Zo= myfft(y(2:2:N),N/2); % The odd entries 
       w= exp(-2*i*pi/N).^(0:(N/2-1)); % The exponential term form the formula.

       Z= 0.5.*[Ze+w.*Zo, Ze-w.*Zo]; % By the definition of fourier transform
    end
end

