function [ matriks_Warping ] = Warping( matriks_grayscale )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = size(matriks_grayscale);
matriks_temp = [];
matriks_temp = [matriks_temp; matriks_grayscale(:,:) matriks_grayscale(:,1:(y-1))];
[xTemp,yTemp] = size(matriks_temp);

for i=1:xTemp
   for j=1:yTemp
      matriks_temp(i,j) = 0; 
   end
end

for j=1:xTemp
    for k=y:yTemp
        matriks_temp(j,k) = matriks_grayscale(j,(k+1)-y);
    end
   
    y = y-1;
    yTemp = yTemp - 1;
end

matriks_Warping = matriks_temp(:,:);
end

