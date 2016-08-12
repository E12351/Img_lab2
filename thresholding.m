function y = thresholding(img1,val);

I1 = imread(img1);
img1 = rgb2gray(I1);

[m,n] = size(img1);

for i = 1:m
    for j = 1:n
        if ( img1(i,j) < val)
            img1(i,j) = 0;
            %fprintf('%d\n',img1(i:j));
        else
            img1(i,j) = 255;
            %fprintf('%d\n',img1(i:j));
        end
    end
end
%imshow(img1);
imwrite(img1,'thresholding.jpg');