function [maxRow] = soru1(A)
    rowSums = sum(A, 2);
    [maxValue, maxRow] = max(rowSums);
end