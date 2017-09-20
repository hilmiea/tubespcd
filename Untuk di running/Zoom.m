function [ matriks_Zoom ] = Zoom( matriks_grayscale,pilihan )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes her

if (pilihan == 1)
matriks_temp = [];
matriks_temp = [matriks_temp; matriks_grayscale matriks_grayscale];
matriks_temp = [matriks_temp; matriks_grayscale matriks_grayscale];
[x,y] = size(matriks_grayscale);

for i=1:x
   for j=1:y
       if (i == 1) & (j == 1)
            matriks_temp(i,j) = matriks_grayscale(i,j); 
            matriks_temp(i,j+1) = matriks_grayscale(i,j);
            matriks_temp(i+1,j) = matriks_grayscale(i,j);
            matriks_temp(i+1,j+1) = matriks_grayscale(i,j);
       elseif ( j == 1 )
            matriks_temp(i+1,j) = matriks_grayscale(i,j); 
            matriks_temp(i+1,j+1) = matriks_grayscale(i,j);
            matriks_temp(i+2,j) = matriks_grayscale(i,j);
            matriks_temp(i+2,j+1) = matriks_grayscale(i,j);
       elseif (i == 1)
            matriks_temp(i,j+(j-1)) = matriks_grayscale(i,j); 
            matriks_temp(i,j+j) = matriks_grayscale(i,j);
            matriks_temp(i+1,j+(j-1)) = matriks_grayscale(i,j);
            matriks_temp(i+1,j+j) = matriks_grayscale(i,j);
       else
            matriks_temp(i+(i-1),j+(j-1)) = matriks_grayscale(i,j); 
            matriks_temp(i+i,j+(j-1)) = matriks_grayscale(i,j);
            matriks_temp(i+(i-1),j+j) = matriks_grayscale(i,j);
            matriks_temp(i+i,j+j) = matriks_grayscale(i,j);
       end
   end
end

elseif (pilihan == 2)
    [x,y] = size(matriks_grayscale);
x = x/2;
y = y/2;
matriks_temp = matriks_grayscale(1:x,1:y);

for i=1:x
   for j=1:y
      if (i == 1) & (j == 1)
            matriks_temp(i,j) = (matriks_grayscale(i,j) + matriks_grayscale(i,j+1) + matriks_grayscale(i+1,j) + matriks_grayscale(i+1,j+1))/4;
       elseif ( j == 1 )
            matriks_temp(i,j) = (matriks_grayscale(i+1,j) + matriks_grayscale(i+1,j+1) + matriks_grayscale(i+2,j) + matriks_grayscale(i+2,j+1) ) /4;
       elseif (i == 1)
            matriks_temp(i,j) = (matriks_grayscale(i,j+(j-1)) + matriks_grayscale(i,j+j) + matriks_grayscale(i+1,j+(j-1)) + matriks_grayscale(i+1,j+j) ) /4
      else
            matriks_temp(i,j) = ( matriks_grayscale(i+(i-1),j+(j-1)) + matriks_grayscale(i+i,j+(j-1)) + matriks_grayscale(i+(i-1),j+j) + matriks_grayscale(i+i,j+j) )/4;
       end 
   end
end
end

matriks_Zoom = matriks_temp(:,:);
end

