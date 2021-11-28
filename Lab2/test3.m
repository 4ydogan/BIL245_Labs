close all;
clear;
clc;

A = imread('Lenna.png');
A = rgb2gray(A);

figure;
F = [1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1]/25;
B = soru1(A);
B = soru1(B);
B = soru3(B, F);
imshow([A B]);

figure;
C = 2*double(A) - double(B);
C = uint8(C); 
imshow([A C]);

figure;
F = [2 2 4 2 2; 1 1 2 1 1; 0 0 0 0 0; -1 -1 -2 -1 -1; -2 -2 -4 -2 -2];
B = soru1(A);
B = soru1(B);
B = soru3(B, F);
imshow([A B]);

figure;
F = [2 2 4 2 2; 1 1 2 1 1; 0 0 0 0 0; -1 -1 -2 -1 -1; -2 -2 -4 -2 -2]';
B = soru1(A);
B = soru1(B);
B = soru3(B, F);
imshow([A B]);