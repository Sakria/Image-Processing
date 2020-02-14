close all;
clear;
clc;
%»Ö¸´Í¼Ïñ
t3=imread('t3-2.bmp');
t4=imread('t4-2.bmp');
t5=imread('t5.bmp');
t6=imread('t6.bmp');
t8=imread('t8.bmp');
t9=imread('t9.bmp');
s=imread('secret-M.bmp');
signal=imread('signal.bmp');
[m,n]=size(s);
r1=bitxor(t3,bitxor(t4,bitxor(t5,t6)));
r2=bitxor(t5,bitxor(t6,bitxor(t8,t9)));
for i=1:m
    for j=1:n
        if(signal(i,j)==0||signal(i,j)==255||signal(i,j)==173)
            r1(i,j)=s(i,j);
            r2(i,j)=s(i,j);
        end
    end
end
figure;imshow(r1);
figure;imshow(r2);
imwrite(r1,'r1.bmp');
imwrite(r2,'r2.bmp');

% %»Ö¸´Í¼Ïñ
% t1=imread('t1-1.bmp');
% t2=imread('t2-1.bmp');
% t3=imread('t3.bmp');
% t4=imread('t4.bmp');
% t5=imread('t7.bmp');
% t6=imread('t8.bmp');
% s=imread('secret-M.bmp');
% signal=imread('signal.bmp');
% [m,n]=size(s);
% r1=bitxor(t1,bitxor(t2,bitxor(t3,t4)));
% r2=bitxor(t1,bitxor(t2,bitxor(t5,t6)));
% for i=1:m
%     for j=1:n
%         if(signal(i,j)==0||signal(i,j)==255||signal(i,j)==173)
%             r1(i,j)=s(i,j);
%             r2(i,j)=s(i,j);
%         end
%     end
% end
% figure;imshow(r1);
% figure;imshow(r2);
% imwrite(r1,'r1.bmp');
% imwrite(r2,'r2.bmp');