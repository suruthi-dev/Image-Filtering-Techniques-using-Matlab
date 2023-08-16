org_img = imread('cameraman.tif');
image = im2double(org_img);

bilateral_filtered = bfilter2(image);

figure;
subplot(1,2,1)
imshow(org_img);
title("Original Image");


subplot(1,2,2)
imshow(bilateral_filtered);
title("Bilateral Filtered Image");


