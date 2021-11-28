close all;
clear;
clc;

% change k to test soru5
k = 4;

A = imread('image.jpg');
A = rgb2gray(A);
B = imresize(A, 1/k);
C = soru5(A, k);
imshow([B C]);