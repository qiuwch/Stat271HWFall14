id = '41004';
im = imread(['../data/trainImgs/' id '.jpg']);

grayIm = rgb2gray(im);
imshow(grayIm);

f = fspecial('gaussian', 10, 10);

fim = imfilter(grayIm, f);
subplot(121); imshow(fim);

method = 'sobel';
method = 'CentralDifference';
% method = 'IntermediateDifference';
[Gmag,Gdir] = imgradient(fim, method);
% 
subplot(122); imagesc(abs(Gmag));





