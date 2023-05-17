% Read the input image
inputImage = imread('image.jpg');

% Convert the image to grayscale
grayImage = rgb2gray(inputImage);

% Reshape the image to a 1D vector
imageVector = reshape(grayImage, [], 1);

% Perform k-means clustering
numClusters = 2; % Number of clusters
[clusterIdx, ~] = kmeans(double(imageVector), numClusters);

% Reshape the clustered indices back to the original image size
segmentedImg = reshape(clusterIdx, size(grayImage));

% Display the original and segmented images
figure;
subplot(1, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(1, 2, 2);
imshow(segmentedImg, []);
title('Segmented Image');
