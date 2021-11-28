close all;
clear;
clc;

% change this part to test with different matrices
A = randi([-5 10], 3, 4);

i = soru1(A);
disp(A);
disp(i);