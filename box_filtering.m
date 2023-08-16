image = imread('cameraman.tif');
kernal_size = 15;
box_filter = fspecial('average',kernal_size);

filtered_img = imfilter(image,box_filter);

figure;
subplot(1,2,1);
imshow(image);
title("Original Image");

subplot(1,2,2);
imshow(filtered_img);
title(sprintf("Average Filter kernel size = %d", kernal_size));
