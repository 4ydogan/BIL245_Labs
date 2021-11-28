function [m,n,C,A,L,v,Req] = Laplacian(d)
    % Assume d is given correctly
    
    % part A (0 points)
    % Find m,n
    m = 2*d;     % NOT correct
    n = d+1;     % NOT correct
    
    % m,n MUST be correct in order to continue

    % part B (10 points)
    % Find C
    C = eye(m);      % NOT correct
     
    for i=1:d
        C(i,i) =  0.5;
    end
    
    % part C (35 points)
    % Find A
    A = zeros(m,n);      % NOT correct

    for i=1:d-1
        A(i,i) = 1;
        A(i, i+1) = -1;        
    end
    
    A(d,1) = -1;
    A(d, d) = 1;
    
    for i=d+1:2*d
        A(i,i-d) = 1;
        A(i, n) = -1;
    end
    
    L = A' * C * A;     % no need to change this line
    % L MUST be correct in order to continue
    L1 = L(1:end-2, 1:end-2);
    L2 = L(1:end-2, end:end);
    
    % part D (30 points)
    % Find v    % NOT correct
    v = L1 \ (-1*L2);
    % v MUST be correct in order to continue
    v1 = [v; 0; 1];
    % part E (15 points)
    % Find Req
    I = L * v1;
    Req = 1/abs(I(end)); % NOT correct
end