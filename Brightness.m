function y =Brightness(img,val)

img = imread(img);
image = img.*val;

y=image;
figure
imshow(image);

imwrite(image,'Brightness.jpg');
end
