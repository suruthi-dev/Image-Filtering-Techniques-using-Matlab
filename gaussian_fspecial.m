image = imnoise(imread("cameraman.tif"),'gaussian');

kernel_size = 3;
std_dev = 2;

gaussian_filter = fspecial('gaussian',kernel_size,std_dev);

filtered_img = imfilter(image,gaussian_filter);

figure;
subplot(1,2,1)
imshow(image)
title("Original Image + Noise ")

subplot(1,2,2)
imshow(filtered_img)
title("Gaussian Filtered Image");
