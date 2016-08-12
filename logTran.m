function y = logTran(img1)

I1 = imread(img1);
%I2 = im2double(I1,'indexed');
I2 = double(I1);
img1 = rgb2gray(I2);

[m,n] = size(img1);
max = 0;
for i = 1:m
    for j = 1:n
        if(max < img1(i,j))
            max = img1(i,j);
        end
    end
end

c = (255/log(1 + (max)))

for i = 1:m
    for j = 1:n
        img1(i,j)= ( c*log( 1 + img1(i,j)));
    end
end

%imshow(img1);
%disp(img1);
imwrite(img1,'logTran.jpg');
end