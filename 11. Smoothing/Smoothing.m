function [ matriks_Smoothing ] = Smoothing( matriks_grayscale,pilihan )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

if (pilihan == 1)
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
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
          matriks_temp(i,j) = matriks_temp2(5,1);
      end
   end
end
elseif (pilihan == 2)
[x,y] = size(matriks_grayscale);
matriks_temp = matriks_grayscale(:,:);

for i=1:x
   for j=1:y
      if (i == 1) & (j == 1)
          matriks_temp(i,j) = (matriks_grayscale(i,j) + matriks_grayscale(i,j+1) + matriks_grayscale(i+1,j) + matriks_grayscale(i+1,j+1))/9;      
      elseif (i == 1) & ( j ~= 1) & ( j ~= y)
          matriks_temp(i,j) = (matriks_grayscale(i,j) + matriks_grayscale(i,j-1) + matriks_grayscale(i,j+1) + matriks_grayscale(i+1,j-1) + matriks_grayscale(i+1,j) + matriks_grayscale(i+1,j+1))/9  ;      
      elseif (i == 1) & (j == y)
          matriks_temp(i,j) = ( (matriks_grayscale(i,j) + matriks_grayscale(i,j-1) + matriks_grayscale(i+1,j-1) + matriks_grayscale(i+1,j) )/9 );
      elseif (j == 1) & ( i ~= 1) & ( i ~= x)
          matriks_temp(i,j) = (matriks_grayscale(i,j) + matriks_grayscale(i-1,j) + matriks_grayscale(i+1,j) + matriks_grayscale(i-1,j+1) + matriks_grayscale(i,j+1) + matriks_grayscale(i+1,j+1))/9;
      elseif (j == y) & ( i ~= 1) & ( i ~= x)
          matriks_temp(i,j) = (  matriks_grayscale(i,j) +  matriks_grayscale(i,j-1)+ matriks_grayscale(i-1,j-1) +  matriks_grayscale(i-1,j) +  matriks_grayscale(i+1,j) +  matriks_grayscale(i+1,j-1)  )/9  ;
      elseif (i == x) & (j == 1)
          matriks_temp(i,j) = (  matriks_grayscale(i,j) +  matriks_grayscale(i-1,j) +  matriks_grayscale(i-1,j+1) +  matriks_grayscale(i,j+1)  )/9 ;
      elseif (i == x) & ( j ~= 1 ) & ( j ~= y )
          matriks_temp(i,j) = (  matriks_grayscale(i,j) +  matriks_grayscale(i,j-1) +  matriks_grayscale(i,j+1) +  matriks_grayscale(i-1,j-1) +  matriks_grayscale(i-1,j) +  matriks_grayscale(i-1,j+1))/9  ;
      elseif (i == x) & (j == y)
          matriks_temp(i,j) = (matriks_grayscale(i,j) +  matriks_grayscale(i,j-1) +  matriks_grayscale(i-1,j-1) + matriks_grayscale(i-1,j))/9;
      else
          matriks_temp(i,j) = ( matriks_grayscale(i,j) + matriks_grayscale(i,j-1) + matriks_grayscale(i,j+1) + matriks_grayscale(i-1,j-1) + matriks_grayscale(i-1,j) + matriks_grayscale(i-1,j+1) + matriks_grayscale(i+1,j-1) + matriks_grayscale(i+1,j) + matriks_grayscale(i+1,j+1))/9;
      end
   end
end
elseif (pilihan == 3)
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
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
          matriks_temp(i,j) = mode(matriks_temp2);
      end
   end
end
end

matriks_Smoothing = matriks_temp(:,:);
end

