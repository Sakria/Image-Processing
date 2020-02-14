close all;
clear;
clc;
%»Ö¸´Í¼Ïñ
% t1=imread('t1.bmp');
t2=imread('t2.bmp');
t3=imread('t3.bmp');
t4=imread('t4.bmp');
t5=imread('t5.bmp');
% t6=imread('t6.bmp');
% t7=imread('t7.bmp');
% t8=imread('t8.bmp');
% t9=imread('t9.bmp');
s=imread('secret-H.bmp');
signal=imread('signal.bmp');
[m,n]=size(s);
r1=bitxor(t2,t3);
r2=bitxor(t2,bitxor(t3,t4));
r3=bitxor(t2,bitxor(t3,bitxor(t4,t5)));
% r1=bitxor(t1,bitxor(t2,bitxor(t3,t4)));
% r2=bitxor(t5,bitxor(t6,bitxor(t3,t4)));
% r3=bitxor(t1,bitxor(t2,bitxor(t7,t8)));
% r4=bitxor(t5,bitxor(t6,bitxor(t8,t9)));
for i=1:m
    for j=1:n
        if(signal(ceil(i/3),ceil(j/3))==0||signal(ceil(i/3),ceil(j/3))==255||signal(ceil(i/3),ceil(j/3))==173)
            r1(i,j)=s(i,j);
            r2(i,j)=s(i,j);
            r3(i,j)=s(i,j);
%             r4(i,j)=s(i,j);
        end
    end
end
figure;imshow(r1);
figure;imshow(r2);
figure;imshow(r3);
% figure;imshow(r4);
imwrite(r1,'r1.bmp');
imwrite(r2,'r2.bmp');
imwrite(r3,'r3.bmp');
% imwrite(r4,'r4.bmp');