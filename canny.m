
%图像边缘检测
%加载图片并读取图片信息
srcImage=imread('./origin/IMG004x009+27.0.jpg');
srcImageInfo=imfinfo('./origin/IMG004x009+27.0.jpg');%图像为truecolor，首先转化为灰度图
 
%将图像转化为灰度图
grayImage=rgb2gray(srcImage);
 
%分别使用Roberts\Sobel\Prewitt\Canny算子进行边缘检测
imageRoberts=edge(grayImage,'roberts');
imageSobel=edge(grayImage,'sobel');
imagePrewitt=edge(grayImage,'prewitt');
imageCanny=edge(grayImage,'canny');
 
%显示检测图像
subplot(2,3,1);
imshow(grayImage);
title('原图像');
 
subplot(2,3,2);
imshow(imageRoberts);
title('roberts');
 
subplot(2,3,3);
imshow(imageSobel);
title('sobel');
 
subplot(2,3,4);
imshow(imagePrewitt);
title('prewitt');
 
subplot(2,3,5);
imshow(imageCanny);
title('canny');

