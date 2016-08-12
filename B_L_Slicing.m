function y = B_L_Slicing(img,Nobit)
I = imread(img);
img1 = rgb2gray(I);

image1=bitget(img1,Nobit);

%imshow(logical(image1));

imwrite(logical(image1),'B_L_Slicing.jpg');
end