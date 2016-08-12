function [y,x] = GrayHisto(img)

I = imread(img);
%I1 = int8(I);
img1 = rgb2gray(I);
img2 = img1;

[m,n] = size(img1);

image = zeros(1,255);
image1 = zeros(1,255);

for i = 1:m
    for j = 1:n
       for a = 1:255
           if(img1(i,j) == a )
               image(1,a) = image(1,a) + 1 ;
           end
       end
    end
end

figure
title('Frequencies')
plot(image(1,:));

%y = image(1,:);
p = (255/(m*n));
c=0;
for i = 1:255
    c = ( c + image(1,i) ) ;
   image1(1,i) = round( p * c );
   %fprintf('%d  %d  %d  %d\n',i,image1(1,i),image(1,i),c);
end

%y = image1(1,:);

for i = 1:m
    for j = 1:n
       for a = 1:255
           if(img1(i,j) == a )
               img2(i,j) = image1(1,a);
           end
       end
    end
end

figure
plot(image1(1,:));

%figure
%I2 = cast(img1,'uint8');
%I2 = double(img1);
%plot(I2(1,:))

figure
%I2 = cast(img1,'uint8');
imshow(img2);

imwrite(img2,'GrayHisto2.jpg');
end