close all;
clear;
clc;

s = 2;

A = imread('Lenna.png');
A = rgb2gray(A);

figure;
F = [1 1 1; 1 1 1; 1 1 1]/9;
B = soru1(A);
B = soru4(B, F, s);
imshow([A [B B; B B]]);

figure;
F = [-1 -2 -1; 0 0 0; 1 2 1];
B = soru1(A);
B = soru4(B, F, s);
imshow([A [B B; B B]]);

figure;
F = [-1 0 1; -2 0 2; -1 0 1];
B = soru1(A);
B = soru4(B, F, s);
imshow([A [B B; B B]]);