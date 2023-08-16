image = imread('cameraman.tif');
sobel = fspecial('sobel');
filtered_img = imfilter(image,sobel);

figure;
subplot(1,2,1);
imshow(image);
title("Original Image");

subplot(1,2,2);
imshow(filtered_img)
title("Sobel - filtered ");


