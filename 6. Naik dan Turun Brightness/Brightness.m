function [ matriks_Brightness ] = Brightness( matriks_grayscale,n,pilihan )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if(pilihan == 1)
    matriks_temp = matriks_grayscale(:,:)+n;
elseif (pilihan == 2)
    matriks_temp = matriks_grayscale(:,:)-n;
end

matriks_Brightness = matriks_temp(:,:);
end

