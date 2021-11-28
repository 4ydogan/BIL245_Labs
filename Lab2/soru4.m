function [B] = soru4(A, F, s)
    [m,n] = size(A);
    [k,l] = size(F);
    z=k-1;
    
    c = floor(m-k/s);
    d = floor(n-k/s);
    
    B = zeros(c,d);
   
    a=1;
    b=1;
    
    for i=1:s:m-z
        for j=1:s:n-z
            C = A(i:i+z, j:j+z).*F;
            x = sum(sum(C));
            B(a,b) = x;
            b = b+1;
        end
        a = a+1;
        b = 1;
    end
    
    B = uint8(B);
end