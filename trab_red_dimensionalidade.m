img = imread("lena.jpg");
imgCinza = (0.298936 * img(:,:,1) + 0.587043 * img(:,:,2) + 0.114021 * img(:,:,3));

subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(imgCinza);

imgPB = imgCinza;

for i = 1:512
    for j = 1:512
	if (imgPB(i,j,1) < 128)
	   imgPB(i,j,1) = 0;
        else
           imgPB(i,j,1) = 255;
        endif
    end;
end;
subplot(1,3,3)
imshow(imgPB)