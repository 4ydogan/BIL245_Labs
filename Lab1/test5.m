close all;
clear;
clc;

% change this part to test with different matrices
A = randi([1 3], 4, 7);

cols = soru5(A);
disp(A);
disp(cols);