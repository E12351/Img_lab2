function y =Mask_2(img)

img1 = imread(img);
I = rgb2gray(img1);
img2 = imresize(I,[256 256]);

image = img2;

[n,m]=size(img2);
mask = ones(n,m);

%mask(64:192,64:192) = cast(0,class(mask)); 

for i = 1:m
    for j = 1:n
        if power(i-128,2) + power(j-128,2) < power(128,2)
           mask(i,j) = cast(0,class(mask));
        end
    end
end


for i = 1:m
    for j = 1:n
        if mask(i,j) == 0
        img2(i,j) = img2(i,j);
        else
            img2(i,j) =0;
        end
        
    end
end
figure
imshow(img2)
imwrite(img2,'Mask_2.jpg');
end
