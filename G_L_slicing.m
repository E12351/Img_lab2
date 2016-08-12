function y = G_L_slicing(img,intensity,max)
I = imread(img);
img1 = rgb2gray(I);

[n,m]=size(img1);

for i = 1:n
    for j = 1:m
       if img1(i,j) >= intensity
            img1(i,j) = max;
       end
    end
end
%imshow(img1);
imwrite(img1,'G_L_slicing.jpg');
end