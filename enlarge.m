% �Ŵ�3��
close all;
clear;
clc;
s=imread('secret-M.bmp');
% c1=imread('c1.bmp');
% c2=imread('c2.bmp');
c3=imread('c3.bmp');
c4=imread('c4.bmp');
c5=imread('c5.bmp');
c6=imread('c6.bmp');
% c7=imread('c7.bmp');
c8=imread('c8.bmp');
c9=imread('c9.bmp');
% t1=imread('t1.bmp');
% t2=imread('t2.bmp');
t3=imread('t3.bmp');
t4=imread('t4.bmp');
t5=imread('t5.bmp');
t6=imread('t6.bmp');
% t7=imread('t7.bmp');
t8=imread('t8.bmp');
t9=imread('t9.bmp');
r1=imread('r1.bmp');
r2=imread('r2.bmp');
% r3=imread('r3.bmp');
% r4=imread('r4.bmp');
[m,n]=size(s);
ls=zeros(3*m,3*n);
% lt1=zeros(3*m,3*n);
% lt2=zeros(3*m,3*n);
lt3=zeros(3*m,3*n);
lt4=zeros(3*m,3*n);
lt5=zeros(3*m,3*n);
lt6=zeros(3*m,3*n);
% lt7=zeros(3*m,3*n);
lt8=zeros(3*m,3*n);
lt9=zeros(3*m,3*n);
% lc1=zeros(3*m,3*n);
% lc2=zeros(3*m,3*n);
lc3=zeros(3*m,3*n);
lc4=zeros(3*m,3*n);
lc5=zeros(3*m,3*n);
lc6=zeros(3*m,3*n);
% lc7=zeros(3*m,3*n);
lc8=zeros(3*m,3*n);
lc9=zeros(3*m,3*n);
lr1=zeros(3*m,3*n);
lr2=zeros(3*m,3*n);
% lr3=zeros(3*m,3*n);
% lr4=zeros(3*m,3*n);
ls=uint8(ls);
% lt1=uint8(lt1);
% lt2=uint8(lt2);
lt3=uint8(lt3);
lt4=uint8(lt4);
lt5=uint8(lt5);
lt6=uint8(lt6);
% lt7=uint8(lt7);
lt8=uint8(lt8);
lt9=uint8(lt9);
% lc1=uint8(lc1);
% lc2=uint8(lc2);
lc3=uint8(lc3);
lc4=uint8(lc4);
lc5=uint8(lc5);
lc6=uint8(lc6);
% lc7=uint8(lc7);
lc8=uint8(lc8);
lc9=uint8(lc9);
lr1=uint8(lr1);
lr2=uint8(lr2);
% lr3=uint8(lr3);
% lr4=uint8(lr4);
for i=1:m
    for j=1:n
        ls(3*i-2:3*i,3*j-2:3*j)=s(i,j);
%         lt1(3*i-2:3*i,3*j-2:3*j)=t1(i,j);
%         lt2(3*i-2:3*i,3*j-2:3*j)=t2(i,j);
        lt3(3*i-2:3*i,3*j-2:3*j)=t3(i,j);
        lt4(3*i-2:3*i,3*j-2:3*j)=t4(i,j);
        lt5(3*i-2:3*i,3*j-2:3*j)=t5(i,j);
        lt6(3*i-2:3*i,3*j-2:3*j)=t6(i,j);
%         lt7(3*i-2:3*i,3*j-2:3*j)=t7(i,j);
        lt8(3*i-2:3*i,3*j-2:3*j)=t8(i,j);
        lt9(3*i-2:3*i,3*j-2:3*j)=t9(i,j);
%         lc1(3*i-2:3*i,3*j-2:3*j)=c1(i,j);
%         lc2(3*i-2:3*i,3*j-2:3*j)=c2(i,j);
        lc3(3*i-2:3*i,3*j-2:3*j)=c3(i,j);
        lc4(3*i-2:3*i,3*j-2:3*j)=c4(i,j);
        lc5(3*i-2:3*i,3*j-2:3*j)=c5(i,j);
        lc6(3*i-2:3*i,3*j-2:3*j)=c6(i,j);
%         lc7(3*i-2:3*i,3*j-2:3*j)=c7(i,j);
        lc8(3*i-2:3*i,3*j-2:3*j)=c8(i,j);
        lc9(3*i-2:3*i,3*j-2:3*j)=c9(i,j);
        lr1(3*i-2:3*i,3*j-2:3*j)=r1(i,j);
        lr2(3*i-2:3*i,3*j-2:3*j)=r2(i,j);
%         lr3(3*i-2:3*i,3*j-2:3*j)=r3(i,j);
%         lr4(3*i-2:3*i,3*j-2:3*j)=r4(i,j);
    end
end
% d1=bitxor(lt1,lc1);
% d2=bitxor(lt2,lc2);
d3=bitxor(lt3,lc3);
d4=bitxor(lt4,lc4);
d5=bitxor(lt5,lc5);
d6=bitxor(lt6,lc6);
% d7=bitxor(lt7,lc7);
d8=bitxor(lt8,lc8);
d9=bitxor(lt9,lc9);
imwrite(ls,'secret-M.bmp');
% imwrite(lt1,'t1.bmp');
% imwrite(lt2,'t2.bmp');
imwrite(lt3,'t3.bmp');
imwrite(lt4,'t4.bmp');
imwrite(lt5,'t5.bmp');
imwrite(lt6,'t6.bmp');
% imwrite(lt7,'t7.bmp');
imwrite(lt8,'t8.bmp');
imwrite(lt9,'t9.bmp');
% imwrite(d1,'d1.bmp');
% imwrite(d2,'d2.bmp');
imwrite(d3,'d3.bmp');
imwrite(d4,'d4.bmp');
imwrite(d5,'d5.bmp');
imwrite(d6,'d6.bmp');
% imwrite(d7,'d7.bmp');
imwrite(d8,'d8.bmp');
imwrite(d9,'d9.bmp');
imwrite(lr1,'r1.bmp');
imwrite(lr2,'r2.bmp');
% imwrite(lr3,'r3.bmp');
% imwrite(lr4,'r4.bmp');