function y = subtraction(a,b)

I = imread(a);
img1 = rgb2gray(I);

I = imread(b);
img2 = rgb2gray(I);

[m1,n1] = size(img1);
[m2,n2] = size(img2);

if m1 ~= m2
    fprintf('Error. \n The sizes should be equal in both images.');
    return;
end
if n1 ~= n2
    fprintf('Error. \n The sizes should be equal in both images.');
    return
end

img = img1-img2;

%imshow(img);
imwrite(img,'subtraction.jpg');