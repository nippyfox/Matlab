m = zeros(800,800); % Task 1. Creating 8-bit blank image
image = im2uint8(m);
n_image = imnoise(image, 'gaussian'); % Task 2. Creating noise on the image
n_image_copy = n_image;
n_hist = histogram(n_image); % Task 3. Creating a histogram
dir = ('diplab5');
if ~exist(dir)
    mkdir(dir);
end
cd(dir);
saveas(n_hist, 'lab5_1', 'jpg');
pic1 = im2double(imread('pic1.png')); % Task 4. Center image synthesizing
for i = 1:size(pic1, 1)
    for j = 1:size(pic1, 2)
        if (pic1(i,j) < 1)
            n_image(i+310, j+310) = pic1(i,j);
        end
    end
end
imwrite(n_image, 'lab5_2.png');
n_image = n_image_copy; % Task 5.1. 2x object magnification
pic1_51 = imresize(pic1, 2);
for i = 1:size(pic1_51, 1)
    for j = 1:size(pic1_51, 2)
        if (pic1_51(i,j) < 1)
            n_image(i+230, j+230) = pic1_51(i,j);
        end
    end
end
imwrite(n_image, 'lab5_3.png');
n_image = n_image_copy; % Task 5.2. 2x object reduction
pic1_52 = imresize(pic1, 0.5);
for i = 1:size(pic1_52, 1)
    for j = 1:size(pic1_52, 2)
        if (pic1_52(i,j) < 1)
            n_image(i+355, j+355) = pic1_52(i,j);
        end
    end
end
imwrite(n_image, 'lab5_4.png');
n_image = imnoise(image, 'gaussian'); % Task 6.1. Synthesize a new image
n_image_copy = n_image;
pic2 = im2double(imread('pic2.png')); % Task 6.2. Drawing object 2 on the image
for i = 1:size(pic2, 1)
    for j = 1:size(pic2, 2)
        if (pic2(i,j) < 1)
            n_image(i+15, j+15) = pic2(i,j);
        end
    end
end
pic3 = im2double(imread('pic3.png')); % Task 6.3. Drawing object 3 on the image
for i = 1:size(pic3, 1)
    for j = 1:size(pic3, 2)
        if (pic3(i,j) < 1)
            n_image(i+630, j+600) = pic3(i,j);
        end
    end
end
imwrite(n_image, 'lab5_5.png');
imwrite(fliplr(n_image), 'lab5_6.png'); % Task 7. Horizontal mirroring of image
imwrite(flip(n_image), 'lab5_7.png'); % Task 8. Vertical mirroring of image
imwrite(imrotate(n_image, 315), 'lab5_8.png'); % Task 9. Rotating the image 45 degrees to the right
imwrite(imrotate(n_image, 45), 'lab5_9.png'); % Task 10. Rotating the image 45 degrees to the left
fon = imread('fon.jpg'); % Task 11. Uploading image to the program
fon = imcrop(fon, [50 50 799 799]); % Task 12. Cropping image
fon = imadjust(fon, [0 1], [0 0.25]); % Task 13. Brightness reduction
fon_copy = fon;
for i = 1:size(pic2, 1) % Task 14.1 Drawing object 2 on the image
    for j = 1:size(pic2, 2)
        if (pic2(i,j) < 1)
            fon(i+15, j+15) = pic2(i,j);
        end
    end
end
for i = 1:size(pic3, 1) % Task 14.2 Drawing object 3 on the image
    for j = 1:size(pic3, 2)
        if (pic3(i,j) < 1)
            fon(i+630, j+600) = pic3(i,j);
        end
    end
end
fon = imnoise(fon, 'gaussian'); % Task 14.3 Creating noise on the image
imwrite(fon, 'lab5_11.png');
fon1 = imadjust(fon, [0 1], [1 0]); % Task 15. Negative
imwrite(fon1, 'lab5_12.png');
for i = 1:size(pic1, 1) % Task 16. Creating operation with second image
    for j = 1:size(pic1, 2)
        if (pic1(i,j) < 1)
            fon_copy(i+310, j+310) = pic1(i,j);
        end
    end
end
fon_copy = imnoise(fon_copy, 'gaussian');
imwrite(fon_copy, 'lab5_13.png');
imwrite(fon-fon_copy, 'lab5_14.png'); % Task 17. Subtraction
