close all;
clear;
clc;

% change this part to test with different matrices
A = randi([-5 10], 3, 4);

B = soru4(A);
disp(A);
disp(B);