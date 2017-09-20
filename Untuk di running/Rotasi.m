function [ matriks_Rotasi ] = Rotasi( matriks_grayscale,derajat )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here-

if(derajat == 90)
    [x,y] = size(matriks_grayscale);
    matriks_temp = transpose(matriks_grayscale);
    matriks_temp2 = matriks_temp(:,:);

    for i=1:x
        if (i == 1)
            matriks_temp2(:,x) = matriks_temp(:,i);
        else
            matriks_temp2(:,x-(i-1)) = matriks_temp(:,i);
        end
    end
    matriks_Rotasi = matriks_temp2(:,:);
    
elseif (derajat == 180)
    [x,y] = size(matriks_grayscale);
    matriks_temp = matriks_grayscale(:,:);
    matriks_temp2 = matriks_temp(:,:);
    matriks_temp3 = matriks_temp(:,:);
    for i=1:x
        if (i == 1)
        	matriks_temp2(x,:) = matriks_temp(i,:);
        else
            matriks_temp2(x-(i-1),:) = matriks_temp(i,:);
        end
    end

    for i=1:y
        if (i == 1)
            matriks_temp3(:,i) = matriks_temp2(:,y); 
        else
            matriks_temp3(:,i) = matriks_temp2(:,y-(i-1));
        end
    end
    matriks_Rotasi = matriks_temp3(:,:);
elseif (derajat == 270)
    [x,y] = size(matriks_grayscale);
    matriks_temp = transpose(matriks_grayscale);
    matriks_temp2 = matriks_temp(:,:);

    for i=1:y
        if (i == 1)
            matriks_temp2(y,:) = matriks_temp(i,:);
        else 
            matriks_temp2(y-(i-1),:) = matriks_temp(i,:);
        end
    end
    matriks_Rotasi = matriks_temp2(:,:);
end




end

