org_img = imread('cameraman.tif');
image = imnoise(org_img,'salt & pepper');


gaussian = fspecial('gaussian');

gaussian_filtered = imfilter(image,gaussian);

hybrid = medfilt2(gaussian_filtered);


subplot(2,2,1);
imshow(org_img);
title("Original Image");

subplot(2,2,2);
imshow(image);
title("Noise Added");

subplot(2,2,3);
imshow(gaussian_filtered);
title("Gaussian Filtered Image");


subplot(2,2,4);
imshow(hybrid);
title("Median(Gaussian) Hybrid Image");



