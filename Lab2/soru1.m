function [B] = soru1(A)
    [m, k] = size(A);
    B = zeros(m+2,k+2);
    B(1,:) = [ A(1,1) A(1,:) A(1,k)];
    B(end,:) = [A(m,1) A(end,:) A(m,k)];
    B(:,1) = [A(1,1); A(:,1); A(m,1)];
    B(:,end) = [A(1,k); A(:,end); A(m,k)];
     
    B(2:m+1, 2:k+1) = A;  
end