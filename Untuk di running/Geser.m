function [ matriks_Geser ] = Geser(matriksGrayscale,n,arah)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[x,y] = size(matriksGrayscale);
matriks_temp = matriksGrayscale(:,:);
if (arah == 1)
    temp = y - n;
    
    matriks_temp(:,n+1:y) = matriksGrayscale(:,1:temp);
    
    for i=1:n
        matriks_temp(:,i) = 0;
    end 

elseif (arah == 2)
    temp = y - n;

    matriks_temp(:,1:temp) = matriksGrayscale(:,n+1:y);

    for i=temp:y
        matriks_temp(:,i) = 0;
    end

elseif (arah == 3)
    temp = x - n;

    matriks_temp(n+1:x,:) = matriksGrayscale(1:temp,:);

    for i=1:n
        matriks_temp(i,:) = 0;
    end

elseif (arah == 4)
    temp = x - n;

    matriks_temp(1:temp,:) = matriksGrayscale(n+1:x,:);

    for i=temp:x
        matriks_temp(i,:) = 0;
    end
   
else
end

matriks_Geser = matriks_temp(:,:);

end

