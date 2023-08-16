org_img = imread('cameraman.tif');
image = imnoise(org_img,'salt & pepper');

median_filtered = medfilt2(image);


subplot(2,2,1);
imshow(image);
title("Original Image + Noise");

subplot(2,2,2);
imshow(median_filtered);
title("Median Filtered Image");


