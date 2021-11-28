close all;
clear;
clc;

% change this part to test with different matrices
A = randi([-5 10], 5, 6);

% comment or uncomment this part to test
A(2:end, 2:end) = 0;

b = soru3(A);
disp(A);
disp(b);