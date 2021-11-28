function [B] = soru2(A, F)

    [m,n] = size(A);
    B = zeros(m-2, n-2);

    for i=1:m-2 
        for j=1:n-2
            C = A(i:i+2, j:j+2).*F;
                      
            x = sum(sum(C));
            B(i,j) = x;
      
        end
    end
    
    B = uint8(B);
    
end