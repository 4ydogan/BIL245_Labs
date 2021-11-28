close all;
clear;
clc;

A = imread('Lenna.png');
A = rgb2gray(A);

figure;
F = [1 1 1; 1 1 1; 1 1 1]/9;
B = soru1(A);
B = soru2(B, F);
imshow([A B]);
%display(F);
figure;
C = 2*double(A) - double(B);
C = uint8(C); 
imshow([A C]);

figure;
F = [-1 -2 -1; 0 0 0; 1 2 1];
B = soru1(A);
B = soru2(B, F);
imshow([A B]);

figure;
F = [-1 0 1; -2 0 2; -1 0 1];
B = soru1(A);
B = soru2(B, F);
imshow([A B]);