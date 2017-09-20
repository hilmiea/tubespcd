function [ R,G,B ] = BukaCitra( gambar )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

A = imread(gambar)
R = A(:,:,1);
G = A(:,:,2);
B = A(:,:,3);
end

