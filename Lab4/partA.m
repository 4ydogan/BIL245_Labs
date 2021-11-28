% Mustafa Aydogan 191101002

function [coef1, coef2] = partA(x, y, d)
    [m,~] = size(x);
    
    M = ones(m,d+1);
    
    for j=d:-1:1
        M(:,j) = M(:,j+1).*x;
    end
    
    % B'Bx = B'b
    B = [M M];
    coef = (B'*B) \ (B'*y);
    
    coef1 = coef(1:d+1); %1:d41
    coef2 = coef(d+2:end); % d+2:end
    
    o1 = M * coef1;
    o2 = M * coef2;

    % Plot
    % NO Need to Change This Part
    figure;
    scatter(x, y, 'filled', 'b');
    hold on;
    plot(x, o1, 'Linewidth', 1.5, 'Color', 'r');
    plot(x, o2, 'Linewidth', 1.5, 'Color', 'g');
    title('Part A');
end