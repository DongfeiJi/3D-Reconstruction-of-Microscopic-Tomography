
%ͼ���Ե���
%����ͼƬ����ȡͼƬ��Ϣ
srcImage=imread('./origin/IMG004x009+27.0.jpg');
srcImageInfo=imfinfo('./origin/IMG004x009+27.0.jpg');%ͼ��Ϊtruecolor������ת��Ϊ�Ҷ�ͼ
 
%��ͼ��ת��Ϊ�Ҷ�ͼ
grayImage=rgb2gray(srcImage);
 
%�ֱ�ʹ��Roberts\Sobel\Prewitt\Canny���ӽ��б�Ե���
imageRoberts=edge(grayImage,'roberts');
imageSobel=edge(grayImage,'sobel');
imagePrewitt=edge(grayImage,'prewitt');
imageCanny=edge(grayImage,'canny');
 
%��ʾ���ͼ��
subplot(2,3,1);
imshow(grayImage);
title('ԭͼ��');
 
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

