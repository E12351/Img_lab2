function [y,x] = Histo(img)

Im = imread(img);
HSV = rgb2hsv(Im);
HSV1 = HSV;

figure
imshow(Im);

I = HSV(:,:,3);
I1 = I;

%figure
%imshow(I1);

[m,n] = size(I);

image = zeros(1,255);
image1 = zeros(1,255);
%round(I(i,j)*255)
for i = 1:m
    for j = 1:n
       for a = 1:255
           if( round(I(i,j)*255) == a )
               image(1,a) = image(1,a) + 1 ;
           end
       end
    end
end

figure
plot(image(1,:));

%y = image(1,:);
p = (255/(m*n));
c=0;
for i = 1:255
    c = ( c + image(1,i) ) ;
   image1(1,i) = round( p * c );
   fprintf('%d  %d  %d  %d\n',i,image1(1,i),image(1,i),c);
end

%y = image1(1,:);

for i = 1:m
    for j = 1:n
       for a = 1:255
           if( round(I(i,j)*255) == a )
               I1(i,j) = image1(1,a)/255;
           end
       end
    end
end

figure
plot(image1(1,:));

HSV1(:,:,3) = I1;
RGB = hsv2rgb(HSV1);

figure
imshow(RGB);

imwrite(RGB,'Histo.jpg');
end