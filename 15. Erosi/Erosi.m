function [ matriks_Erosi ] = Erosi( matriks_grayscale )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = size(matriks_grayscale);
matriks_temp = matriks_grayscale(:,:);
matriks_temp2 = [];

for i=1:x
   for j=1:y
      matriks_temp2 = [];
      if (i == 1) & (j == 1)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j+1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (i == 1) & ( j ~= 1) & ( j ~= y)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j+1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (i == 1) & (j == y)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (j == 1) & ( i ~= 1) & ( i ~= x)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j+1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (j == y) & ( i ~= 1) & ( i ~= x)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j-1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (i == x) & (j == 1)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j+1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (i == x) & ( j ~= 1 ) & ( j ~= y )
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j+1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      elseif (i == x) & (j == y)
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; 0];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      else
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i-1,j+1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j-1)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j)];
          matriks_temp2 = [matriks_temp2; matriks_grayscale(i+1,j+1)];
          matriks_temp2 = sort(matriks_temp2);
          matriks_temp(i,j) = max(matriks_temp2);
      end
   end
end

matriks_Erosi = matriks_temp(:,:);

end

