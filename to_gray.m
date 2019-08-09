clear all;clc;
img=imread("./origin/IMG004x009+27.0.jpg")
%

subplot(2,2,1)
imshow(img)
img1=rgb2gray(img)%»Ò¶È
subplot(2,2,2)
imshow(img1)
img2=im2bw(img1,0.5)%¶þÖµ
subplot(2,2,3)
imshow(img2)

%imwrite(img2,'66666.png')
save img.mat
