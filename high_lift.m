clc,clear,close all;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=[-1,-1,-1;               %Laplace �������˲���
    -1,9,-1;
    -1,-1,-1];
resultPic=myFilter(h1,originalPic);
subplot(1,2,1),imshow(originalPic),title('\fontsize{16}ԭʼͼƬ');
subplot(1,2,2),imshow(resultPic),title('\fontsize{16}�������˲�ͼƬ');
set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');