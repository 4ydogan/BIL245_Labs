function [B] = soru3(A, F)
    [m,n] = size(A);
    [k,l] = size(F);
    z=k-1;
    
    B = zeros(m-z, n-z);
   
    for i=1:m-z 
        for j=1:n-z
            C = A(i:i+z, j:j+z).*F;
            x = sum(sum(C));
            B(i,j) = x;
        end
    end
    
    B = uint8(B);
end