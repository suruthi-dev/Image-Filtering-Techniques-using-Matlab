mask = 5; % Define size of Gaussian mask
sigma = 2; % Define sigma here

ind = -floor(mask/2):floor(mask/2);
[X,Y] = meshgrid(ind,ind);

power_term = exp(-(X.^2 + Y.^2) / (2*sigma*sigma));

power_term = power_term/(sum(power_term(:)));

% Converting filter into Column Vector
power_term = power_term(:);

%Filtering
org_img = imread('cameraman.tif');

image = imnoise(org_img,'gaussian');

image = im2double(image);

padding = padarray(image,[floor(mask/2),floor(mask/2)]);

concatenated_img = im2col(padding,[mask,mask],'sliding');

conv_filter = sum(bsxfun(@times,concatenated_img,power_term),1);

out = col2im(conv_filter, [mask mask], size(padding), 'sliding');


figure;
subplot(2,2,1);
imshow(org_img);
title("Original Image");

subplot(2,2,2);
imshow(image);
title("Added Noise");


subplot(2,2,3);
imshow(filtered_img);
title("Average Filtered");


subplot(2,2,4);
imshow(out);
title("Manual Gaussian-Filtered");

% https://stackoverflow.com/questions/27499057/how-do-i-create-and-apply-a-gaussian-filter-in-matlab-without-using-fspecial-im
