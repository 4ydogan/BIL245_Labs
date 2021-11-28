function [b] = soru3(A)
    b = uint8(mean(mean(A(2:end, 2:end)==0)));
end