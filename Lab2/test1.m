close all;
clear;
clc;

% change this part to test with different matrices
A = randi([0 10], 6, 4);

B = soru1(A);
disp(A);
disp(B);