function z = mydft(y)
    % Compute the DFT of a vector y of length N
    % z_k = 1/N sum_{1=0}ˆ{N-1}y 1 exp(-2 pi k 1/N)
    N = length(y);
    omega = exp (2.*pi.*i./N);% here i is the imaginary unit
    for n = 1:N
        temp_sum = 0;
        for j = 1:N
            temp_sum = temp_sum + y(j).*omega.^(-(n-1)*(j-1));
            z(n) = temp_sum .* (1/N);
        end
    end
end
            
    