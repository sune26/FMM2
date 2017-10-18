%b)

clear all
N = 2^4;
for i = 0:N-1
    x(i+1) = -pi+2*pi*i/N;
end
y = zeros(1,N);
for j = 1:N
    y(j) = 3+2*cos(50*x(j))+4*sin(120*x(j));
end
z = mydft(y);
figure
stem([0:N-1],real(z))
title('Real part n = 2^4')
figure
stem([0:N-1],imag(z))
title('Imaginary part n = 2^4')
figure
stem([0:N-1],abs(z))
title('Amplitude n = 2^4')

% N = 2^8

clear all
N = 2^8;
for i = 0:N-1
    x(i+1) = -pi+2*pi*i/N;
end
y = zeros(1,N);
for j = 1:N
    y(j) = 3+2*cos(50*x(j))+4*sin(120*x(j));
end
z = mydft(y);
figure
stem([0:N-1],real(z))
title('Real part n = 2^8')
figure
stem([0:N-1],imag(z))
title('Imaginary part n = 2^8')
figure
stem([0:N-1],abs(z))
title('Amplitude n = 2^8')

%c)

clear all
N = 2^8;
for i = 0:N-1
    x(i+1) = 2*pi*i/N;
end
y = zeros(1,N);
for j = 1:N
    y(j) = abs(cos(x(j)));
end
z = mydft(y)
a(1) = real(z(1)) + real(z(N));
for i = 1:N-1
    a(i+1) = real(z(1+i)) + real(z(N+1-i));% cosine coefficients calculated from the DFT z
end
for i = 1:N/2
    a(i) = a(2*i-1);
end
aexact(1) = 2/pi;
for k = 1:N/2
        aexact(k+1) = -(4/pi)*(((-1)^k)/((4*k^2)-1));
end
% plot half number of cosine coefficients
figure
stem(a(1:N/4),'*')
hold on
% plot half exact Fourier cosine coefficients
stem(aexact(1:N/4),'or')
hold off