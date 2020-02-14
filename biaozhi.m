close all;
clear;
s=imread('secret-H.bmp');
[m,n]=size(s);
%形成标志位
signal=ones(m,n);
signal(1:9,1:9)=0;
signal((m-7):m,1:9)=0;
signal(1:9,(n-7):n)=0;
signal(7,:)=0;
signal(:,7)=0;
signal((m-8):(m-4),(n-8):(n-4))=0;
imshow(signal);

% 码字编号
bitIndex=1;
direction=-1;
%Start from the right bottom cell.
x=41;
y=41;
while(x>1)
    if(x==7)
        x=x-1;
    end
    while(y>=1&&y<=41)
        for i=0:1
            xx=x-i;
            if(signal(y,xx)==0)
                continue;
            end
            s(y,xx)=ceil(bitIndex/8);
            bitIndex=bitIndex+1;
        end
        y=y+direction;
    end
    direction=-direction;
    y=y+direction;
    x=x-2;
end
imwrite(s,'signal.bmp');
