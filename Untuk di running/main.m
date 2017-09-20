gambar = '400x400.jpeg';

%----1. Buka Citra -----
[R,G,B] = BukaCitra(gambar);

%----2. Grayscale -----
%[matriks_grayscale] = Grayscale(R,G,B);
%[matriks_grayscale] = GrayscalePart2(R,G,B);
%imshow(matriks_grayscale)

%----3. Pergeseran Gambar-----
%[ matriks_Geser ] = Geser( matriks_grayscale,150,1);
%imshow(matriks_Geser);

%----4. Zoom----- ada Batasan untuk zoom out
%[ matriks_Zoom ] = Zoom( matriks_grayscale,1 );
%imshow(matriks_Zoom);

%----5. Rotasi----- 
%[matriks_Rotasi] = Rotasi( matriks_grayscale,270 );
%imshow(matriks_Rotasi);

%----6. Naik dan Turun Brightness----- 
%[ matriks_Brightness ] = Brightness( matriks_grayscale,50,2 )
%imshow(matriks_Brightness);

%----7. Kali dan Bagi Brightness----- 
%[ matriks_KaliBagiBrightness ] = KaliBagiBrightness( matriks_grayscale,2,2 )
%imshow(matriks_KaliBagiBrightness);

%----8. Warping----- ada Batasan
%[ matriks_Warping ] = Warping( matriks_grayscale );
%imshow(matriks_Warping);

%----9. Histogram----- 
%[ matriks_Histogram ] = Histogram( matriks_grayscale );
%x = matriks_Histogram(:,1);
%y = matriks_Histogram(:,2);
%bar(x,y);

%----10. Konvolusi-----
%kernel = [0.11 0.11 0.11;0.11 0.11 0.11;0.11 0.11 0.11];
%[ matriks_Konvolusi ] = Konvolusi( matriks_grayscale,kernel );
%imshow(matriks_Konvolusi);

%----11. Smoothing-----
%[ matriks_Smoothing ] = Smoothing( matriks_grayscale,1 );
%imshow(matriks_Smoothing);

%----12. Image Sharpening-----
%[ matriks_ImageSharpening ] = ImageSharpening( matriks_grayscale );
%imshow(matriks_ImageSharpening);

%----13. Edge Detection-----
%[ matriks_EdgeDetection ] = EdgeDetection( matriks_grayscale );
%imshow(matriks_EdgeDetection);

%----14. Segmentasi Threshold-----
%[ matriks_SegmentasiThreshold ] = SegmentasiThreshold( matriks_grayscale );
%imshow(matriks_SegmentasiThreshold);

%----15. Erosi-----
%[ matriks_Erosi ] = Erosi( matriks_grayscale );
%imshow(matriks_Erosi);

%----16. Dilasi-----
%[ matriks_Dilasi ] = Dilasi( matriks_grayscale );
%imshow(matriks_Dilasi);

