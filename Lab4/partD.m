% Mustafa Aydogan 191101002

function [coef1, coef2, mse1, mse2] = partD(x, y, d, epoch)
    rng(1);
    [m,~] = size(x);
    
    A = ones(m,d+1);
    for j=d:-1:1
        A(:,j) = A(:,j+1).*x;
    end
    
    MSE_best = 1000*1000*1000;
    coef1 = 0;
    coef2 = 0;
    mse1 = 0;
    mse2 = 0;
   
    for k=1:epoch
        B = [A A];
        for i=1:m
            if rand < 0.5
                B(i,1:d+1) = 0;
            else
                B(i,d+2:end) = 0;
            end
        end
        coef = (B'*B) \ (B'*y);

        o1 = A * coef(1:d+1);
        o2 = A * coef(d+2:end);
        e1 = abs(y - o1);
        e2 = abs(y - o2);
        e = min(e1, e2);
        MSE = e'*e / m;
        if MSE < MSE_best
            MSE_best = MSE;
            coef1 = coef(1:d+1);
            coef2 = coef(d+2:end);
        end
        
    end

    o1 = A * coef1;
    o2 = A * coef2;
   
    Sayac1 = 0;
    Sayi1=0;
    Sayac2 = 0;
    Sayi2=0;
    
    for p=1:m
         re1 = abs(y(p) - o1(p));
         re2 = abs(y(p) - o2(p));
         if re1 < re2
            temp = (y(p) - o1(p)) * (y(p) - o1(p));
            Sayac1 = Sayac1 + temp;
            Sayi1 = Sayi1 + 1;
         else
            temp = (y(p) - o2(p)) * (y(p) - o2(p));
            Sayac2 = Sayac2 + temp;
            Sayi2 = Sayi2 + 1;
         end
    end
    
    mse1 = Sayac1 / Sayi1;
    mse2 = Sayac2 / Sayi2;
    
    % Plot
    % NO Need to Change This Part
    figure;
    scatter(x, y, 'filled', 'b');
    hold on;
    plot(x, o1, 'Linewidth', 1.5, 'Color', 'r');
    plot(x, o2, 'Linewidth', 1.5, 'Color', 'g');
    title('Part D');
end