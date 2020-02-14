%QR-H分享
close all;
clear;
s=imread('secret-H.bmp');
signal=imread('signal.bmp');
signal=double(signal);
[m,n]=size(s);
t1=imread('c1.bmp');
t2=imread('c2.bmp');
t3=imread('c3.bmp');
t4=imread('c4.bmp');
t5=imread('c5.bmp');
t6=imread('c6.bmp');
t7=imread('c7.bmp');
t8=imread('c8.bmp');
t9=imread('c9.bmp');
%码字修改矩阵
b1=[0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0 0;
    0 1 0 0 0 1 1 0 1 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0; 
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1];

b2=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    1 0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 0 0 0 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
    0 0 1 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 1 0 0 1 1 1 0 1 0 1 1 0 0 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

b3=[0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0;
    1 1 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];

b4=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0;
    0 0 1 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 0];
%码字分享
for i=1:m
    for j=1:n
        if(signal(i,j)==0||signal(i,j)==255||signal(i,j)==173)
            continue;
        else
            co=ceil(signal(i,j)/4);
            %确定需要修改码字
            %Q1
            k1=find(b1(:,co)==1);
            %Q2
            k2=find(b2(:,co)==1);
            %Q3
            k3=find(b3(:,co)==1);
            %Q4
            k4=find(b4(:,co)==1);
            %4213
            if((k1==1||k1==2||k1==10)&&(k2==3||k2==4||k2==10)&&(k3==7||k3==10))
                %4
                if(k4==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==8)
                    t8(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t5(i,j),t9(i,j))));
                elseif(k4==9)
                    t9(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t5(i,j))));
                end
                %2
                if(k2==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t4(i,j),bitxor(t5(i,j),t6(i,j))));
                elseif(k2==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t5(i,j),t6(i,j))));
                end
                %1
                if(k1==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t3(i,j),t4(i,j))));
                elseif(k1==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t3(i,j),t4(i,j))));
                end
                %3
                if(k3==7)
                    t7(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t8(i,j))));
                end
            %1243
            elseif((k2==5||k2==6||k2==10)&&(k3==7||k3==10)&&(k4==8||k4==9||k4==10))               
                %1
                if(k1==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t3(i,j),t4(i,j))));
                elseif(k1==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t3(i,j),t4(i,j))));
                elseif(k1==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t4(i,j))));
                elseif(k1==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t3(i,j))));
                end
                %2
                if(k2==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t6(i,j))));
                elseif(k2==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t5(i,j))));
                end
                %4
                if(k4==8)
                    t8(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t5(i,j),t9(i,j))));
                elseif(k4==9)
                    t9(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t5(i,j))));
                end
                %3
                if(k3==7)
                    t7(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t8(i,j))));
                end
            %3124
            elseif((k1==3||k1==4||k1==10)&&(k2==5||k2==6||k2==10)&&(k3==1||k3==2||k3==8)&&(k4==9||k4==10))
                %3
                if(k3==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t7(i,j),t8(i,j))));
                elseif(k3==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t7(i,j),t8(i,j))));
                elseif(k3==8)
                    t8(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t7(i,j))));
                end
                %1
                if(k1==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t4(i,j))));
                elseif(k1==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t3(i,j))));
                end
                %2
                if(k2==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t6(i,j))));
                elseif(k2==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t5(i,j))));
                end
                %4
                if(k4==9)
                    t9(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t5(i,j))));
                end
            %2134
            elseif((k1==1||k1==2||k1==10)&&(k3==8)&&(k4==9||k4==10))
                %2
                if(k2==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t4(i,j),bitxor(t5(i,j),t6(i,j))));
                elseif(k2==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t5(i,j),t6(i,j))));
                elseif(k2==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t6(i,j))));
                elseif(k2==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t5(i,j))));
                end
                %1
                if(k1==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t3(i,j),t4(i,j))));
                elseif(k1==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t3(i,j),t4(i,j))));
                end
                %3
                t8(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t7(i,j))));
                %4
                if(k4==9)
                    t9(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t5(i,j))));
                end
            %1342
            elseif((k2==10)&&(k3==8)&&(k4==5||k4==6))
                %1
                if(k1==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t3(i,j),t4(i,j))));
                elseif(k1==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t3(i,j),t4(i,j))));
                elseif(k1==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t4(i,j))));
                elseif(k1==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t3(i,j))));
                end
                %3
                t8(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t7(i,j))));
                %4
                if(k4==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t8(i,j),t9(i,j))));
                end
            %4312
            elseif((k1==3||k1==4||k1==10)&&(k2==10)&&(k3==1||k3==2||k3==7||k3==10))
                %4
                if(k4==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==8)
                    t8(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t6(i,j),t9(i,j))));
                elseif(k4==9)
                    t9(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t6(i,j),t8(i,j))));
                end
                %3
                if(k3==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t7(i,j),t8(i,j))));
                elseif(k3==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t7(i,j),t8(i,j))));
                elseif(k3==7)
                    t7(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t8(i,j))));
                end
                %1
                if(k1==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t4(i,j))));
                elseif(k1==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t3(i,j))));
                end
            %4321
            elseif((k1==10)&&(k2==3||k2==4)&&(k3==1||k3==2))
                %4
                if(k4==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==8)
                    t8(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t6(i,j),t9(i,j))));
                elseif(k4==9)
                    t9(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t6(i,j),t8(i,j))));
                end
                %3
                if(k3==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t7(i,j),t8(i,j))));
                elseif(k3==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t7(i,j),t8(i,j))));
                end
                %2
                if(k2==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t4(i,j),bitxor(t5(i,j),t6(i,j))));
                elseif(k2==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t5(i,j),t6(i,j))));
                end
            %3421
            elseif((k1==10)&&(k2==3||k2==4)&&(k3==8)&&(k4==5||k4==6))
                %3
                t8(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t2(i,j),t7(i,j))));
                %4
                if(k4==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t6(i,j),bitxor(t8(i,j),t9(i,j))));
                elseif(k4==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t8(i,j),t9(i,j))));
                end
                %2
                if(k2==3)
                    t3(i,j)=bitxor(s(i,j),bitxor(t4(i,j),bitxor(t5(i,j),t6(i,j))));
                elseif(k2==4)
                    t4(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t5(i,j),t6(i,j))));
                end
            %2431
            elseif((k1==10)&&(k2==5||k2==6)&&(k3==1||k3==2)&&(k4==8))
                %2
                if(k2==5)
                    t5(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t6(i,j))));
                elseif(k2==6)
                    t6(i,j)=bitxor(s(i,j),bitxor(t3(i,j),bitxor(t4(i,j),t5(i,j))));
                end
                %4
                t8(i,j)=bitxor(s(i,j),bitxor(t5(i,j),bitxor(t6(i,j),t9(i,j))));                                                
                %3
                if(k3==1)
                    t1(i,j)=bitxor(s(i,j),bitxor(t2(i,j),bitxor(t7(i,j),t8(i,j))));
                elseif(k3==2)
                    t2(i,j)=bitxor(s(i,j),bitxor(t1(i,j),bitxor(t7(i,j),t8(i,j))));
                end
            end
        end
    end
end

%格式信息分享
sf=[s(9,1) s(9,2) s(9,3) s(9,4) s(9,5)];
tf1=[t1(9,1) t1(9,2) t1(9,3) t1(9,4) t1(9,5)];
tf2=[t2(9,1) t2(9,2) t2(9,3) t2(9,4) t2(9,5)];
tf3=[t3(9,1) t3(9,2) t3(9,3) t3(9,4) t3(9,5)];
tf4=[t4(9,1) t4(9,2) t4(9,3) t4(9,4) t4(9,5)];
tf5=[t5(9,1) t5(9,2) t5(9,3) t5(9,4) t5(9,5)];
tf6=[t6(9,1) t6(9,2) t6(9,3) t6(9,4) t6(9,5)];
tf7=[t7(9,1) t7(9,2) t7(9,3) t7(9,4) t7(9,5)];
tf8=[t8(9,1) t8(9,2) t8(9,3) t8(9,4) t8(9,5)];
tf9=[t9(9,1) t9(9,2) t9(9,3) t9(9,4) t9(9,5)];
%修改bit1
tf1(1)=bitxor(sf(1),bitxor(tf2(1),bitxor(tf3(1),tf4(1))));
tf5(1)=bitxor(sf(1),bitxor(tf3(1),bitxor(tf4(1),tf6(1))));
tf8(1)=bitxor(sf(1),bitxor(tf5(1),bitxor(tf6(1),tf9(1))));
tf7(1)=bitxor(sf(1),bitxor(tf1(1),bitxor(tf2(1),tf8(1))));
%修改bit2
tf3(2)=bitxor(sf(2),bitxor(tf4(2),bitxor(tf5(2),tf6(2))));
tf2(2)=bitxor(sf(2),bitxor(tf1(2),bitxor(tf3(2),tf4(2))));
tf8(2)=bitxor(sf(2),bitxor(tf1(2),bitxor(tf2(2),tf7(2))));
tf9(2)=bitxor(sf(2),bitxor(tf5(2),bitxor(tf6(2),tf8(2))));
%修改bit3
tf6(3)=bitxor(sf(3),bitxor(tf5(3),bitxor(tf8(3),tf9(3))));
tf4(3)=bitxor(sf(3),bitxor(tf3(3),bitxor(tf5(3),tf6(3))));
tf2(3)=bitxor(sf(3),bitxor(tf1(3),bitxor(tf3(3),tf4(3))));
tf7(3)=bitxor(sf(3),bitxor(tf1(3),bitxor(tf2(3),tf8(3))));
%修改bit4
tf4(4)=bitxor(sf(4),bitxor(tf3(4),bitxor(tf5(4),tf6(4))));
tf1(4)=bitxor(sf(4),bitxor(tf2(4),bitxor(tf3(4),tf4(4))));
tf8(4)=bitxor(sf(4),bitxor(tf1(4),bitxor(tf2(4),tf7(4))));
tf9(4)=bitxor(sf(4),bitxor(tf5(4),bitxor(tf6(4),tf8(4))));
%修改bit5
tf4(5)=bitxor(sf(5),bitxor(tf1(5),bitxor(tf2(5),tf3(5))));
tf5(5)=bitxor(sf(5),bitxor(tf3(5),bitxor(tf4(5),tf6(5))));
tf7(5)=bitxor(sf(5),bitxor(tf1(5),bitxor(tf2(5),tf8(5))));
tf9(5)=bitxor(sf(5),bitxor(tf5(5),bitxor(tf6(5),tf8(5))));
for i=1:5
    t1(9,i)=tf1(i);
    t2(9,i)=tf2(i);
    t3(9,i)=tf3(i);
    t4(9,i)=tf4(i);
    t5(9,i)=tf5(i);
    t6(9,i)=tf6(i);
    t7(9,i)=tf7(i);
    t8(9,i)=tf8(i);
    t9(9,i)=tf9(i);
end
figure;imshow(t1);
figure;imshow(t2);
figure;imshow(t3);
figure;imshow(t4);
figure;imshow(t5);
figure;imshow(t6);
figure;imshow(t7);
figure;imshow(t8);
figure;imshow(t9);
imwrite(t1,'t1.bmp');
imwrite(t2,'t2.bmp');
imwrite(t3,'t3.bmp');
imwrite(t4,'t4.bmp');
imwrite(t5,'t5.bmp');
imwrite(t6,'t6.bmp');
imwrite(t7,'t7.bmp');
imwrite(t8,'t8.bmp');
imwrite(t9,'t9.bmp');
