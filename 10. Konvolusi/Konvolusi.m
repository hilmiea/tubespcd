function [ matriks_Konvolusi ] = Konvolusi( matriks_grayscale,kernel )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = size(matriks_grayscale);
matriks_temp = matriks_grayscale(:,:);

for i=1:x
   for j=1:y
      if (i == 1) & (j == 1)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j+1)*kernel(2,3)) + (matriks_grayscale(i+1,j)*kernel(3,2)) + (matriks_grayscale(i+1,j+1)*kernel(3,3)));      
      elseif (i == 1) & ( j ~= 1) & ( j ~= y)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j-1)*kernel(2,1)) + (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j+1)*kernel(2,3) + (matriks_grayscale(i+1,j-1)*kernel(3,1)) + (matriks_grayscale(i+1,j)*kernel(3,2)) + (matriks_grayscale(i+1,j+1)*kernel(3,3))));
      elseif (i == 1) & (j == y)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j-1)*kernel(2,1)) + (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i+1,j-1)*kernel(3,1)) + (matriks_grayscale(i+1,j)*kernel(3,2)) );
      elseif (j == 1) & ( i ~= 1) & ( i ~= x)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j+1)*kernel(2,3)) + (matriks_grayscale(i-1,j)*kernel(1,2)) + (matriks_grayscale(i-1,j+1)*kernel(1,3)) + (matriks_grayscale(i+1,j)*kernel(3,2)) + (matriks_grayscale(i+1,j+1)*kernel(3,3)) );
      elseif (j == y) & ( i ~= 1) & ( i ~= x)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j-1)*kernel(2,1)) + (matriks_grayscale(i-1,j-1)*kernel(1,1)) + (matriks_grayscale(i-1,j)*kernel(1,2)) + (matriks_grayscale(i+1,j-1)*kernel(3,1)) + (matriks_grayscale(i+1,j)*kernel(3,2)) );
      elseif (i == x) & (j == 1)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j+1)*kernel(2,3)) + (matriks_grayscale(i-1,j)*kernel(1,2)) + (matriks_grayscale(i-1,j+1)*kernel(1,3)) );
      elseif (i == x) & ( j ~= 1 ) & ( j ~= y )
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j-1)*kernel(2,1)) + (matriks_grayscale(i,j+1)*kernel(2,3)) + (matriks_grayscale(i-1,j-1)*kernel(1,1)) + (matriks_grayscale(i-1,j)*kernel(1,2)) + (matriks_grayscale(i-1,j+1)*kernel(1,3)) );
      elseif (i == x) & (j == y)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j-1)*kernel(2,1)) + (matriks_grayscale(i-1,j-1)*kernel(1,1)) + (matriks_grayscale(i-1,j)*kernel(1,2)) );            
      else
          matriks_temp(i,j) = ( (matriks_grayscale(i,j)*kernel(2,2)) + (matriks_grayscale(i,j-1)*kernel(2,1)) + (matriks_grayscale(i,j+1)*kernel(2,3)) + (matriks_grayscale(i-1,j-1)*kernel(1,1)) + (matriks_grayscale(i-1,j)*kernel(1,2)) + (matriks_grayscale(i-1,j+1)*kernel(1,3)) + (matriks_grayscale(i+1,j-1)*kernel(3,1)) + (matriks_grayscale(i+1,j)*kernel(3,2)) + (matriks_grayscale(i+1,j+1)*kernel(3,3)) );
      end
   end
end


matriks_Konvolusi = matriks_temp(:,:);
end

