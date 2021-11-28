function [A] = soru2(n, k, l)
    A = zeros(n,n);
    for i=1:n
        v = randi([k l], n, 1);
        A(:,i) = v;
        A(i,:) = v';
    end
end