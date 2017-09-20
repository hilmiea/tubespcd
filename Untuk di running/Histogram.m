function [ matriks_Histogram ] = Histogram( matriks_grayscale )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = size(matriks_grayscale);
matriks_temp = [];

for i=1:255
   matriks_temp(i,1) = i;
   matriks_temp(i,2) = 0;
end


for bilangan=1:255
for i=1:x
    for j=1:y
        if(matriks_grayscale(i,j) == bilangan)
           matriks_temp(bilangan,2) = matriks_temp(bilangan,2) + 1;
        end
    end
end
end

matriks_Histogram = matriks_temp(:,:);
end

