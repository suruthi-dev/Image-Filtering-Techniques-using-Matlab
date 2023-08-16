image = imread('cameraman.tif');

sobelX = [-1,0,1;
          -2,0,2;
          -1,0,1];

sobelY = [-1,-2,-1;
           0,0,0;
           1,2,1];

filtered_x = imfilter(image,sobelX);
filtered_y  = imfilter(image,sobelY);

figure;
subplot(2,2,1);
imshow(image)
title("Original Image");



subplot(2,2,3);
imshow(filtered_x);
title("Applied Sobel X-direction ");


subplot(2,2,4);
imshow(filtered_y);
title("Applied Sobel Y-direction ");