function [ matriks_SegmentasiThreshold ] = SegmentasiThreshold( matriks_grayscale )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

threshold = mean2(matriks_grayscale);
threshold = uint8(threshold);
[x,y] = size(matriks_grayscale);
matriks_temp = matriks_grayscale(:,:);

for i=1:x
   for j=1:y
       if (matriks_temp(i,j) < threshold)
           matriks_temp(i,j) = 0;
       elseif (matriks_temp(i,j) > threshold)
           matriks_temp(i,j) = 255;
       end
   end
end

matriks_SegmentasiThreshold = matriks_temp(:,:);

end

