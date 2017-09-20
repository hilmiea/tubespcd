function [ matriks_grayscale ] = Grayscale(R,G,B)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

matriks_grayscale = (R*0.299) + (G*0.587) + (B*0.114);
end

