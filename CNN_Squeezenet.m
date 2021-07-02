%  Load Pretrained squeezenet Network and Data 
net = squeezenet; % Load the squeezemet 
im = imread('buttercup.jpg');  % read the image
imshow(im);

% Reasize the image
imgSize = size(im);
imgSize = imgSize(1:2)

% Viewing and analysing network architecture.
analyzeNetwork(net)  

%Showing Activations of First Convolutional Layer
act1 = activations(net,im,'conv1');

sz = size(act1);
act1 = reshape(act1,[sz(1) sz(2) 1 sz(3)]);

I = imtile(mat2gray(act1),'GridSize',[8 8]);
imshow(I)

% Investigating the Activations in Specific Channels 42

act1ch42 = act1(:,:,:,42);
act1ch42 = mat2gray(act1ch22);
act1ch42 = imresize(act1ch22,imgSize);
I = imtile({im,act1ch42});
imshow(I)

% Finding the Strongest Activation Channel using the max function, resize, and showing the activations

[maxValue,maxValueIndex] = max(max(max(act1)));
act1chMax = act1(:,:,:,maxValueIndex);
act1chMax = mat2gray(act1chMax);
act1chMax = imresize(act1chMax,imgSize);

I = imtile({im,act1chMax});
imshow(I)

% Investigating a Deeper Layer  #7 fire6-squeeze1x1
% Calculate, reshape, and show the activations in a grid
act6 = activations(net,im,'fire6-squeeze1x1');
sz = size(act6);
act6 = reshape(act6,[sz(1) sz(2) 1 sz(3)]);
I = imtile(imresize(mat2gray(act6),[64 64]),'GridSize',[6 8]);
imshow(I)

%Finding the Strongest Activation Channel in fire6-squeeze1x1 layer 

[maxValue6,maxValueIndex6] = max(max(max(act6)));
act6chMax = act6(:,:,:,maxValueIndex6);
act6chMax = mat2gray(act6chMax);
act6chMax = imresize(act6chMax,imgSize);
I = imtile({im,act6chMax});
imshow(I)

% Investigating channels [15 48], and [14 47] further
I = imtile(imresize(mat2gray(act6(:,:,:,[15 48])),imgSize));
imshow(I)

act6relu = activations(net,im,'fire6-relu_squeeze1x1');
sz = size(act6relu);
act6relu = reshape(act6relu,[sz(1) sz(2) 1 sz(3)]);

I = imtile(imresize(mat2gray(act6relu(:,:,:,[14 47])),imgSize));
imshow(I)

% Testing Whether a Channel Recognizes image with spider

imClosed = imread('buttercupSpider.jpg');
imshow(imClosed)

act6Closed = activations(net,imClosed,'fire6-relu_squeeze1x1');
sz = size(act6Closed);
act6Closed = reshape(act6Closed,[sz(1),sz(2),1,sz(3)]);




%Plot the images and activations in one figure.

channelsClosed = repmat(imresize(mat2gray(act6Closed(:,:,:,[14 47])),imgSize),[1 1 3]);
channelsOpen = repmat(imresize(mat2gray(act6relu(:,:,:,[14 47])),imgSize),[1 1 3]);
I = imtile(cat(4,im,channelsOpen*255,imClosed,channelsClosed*255));
imshow(I)
title('Input Image, Channel 14, Channel 47');


