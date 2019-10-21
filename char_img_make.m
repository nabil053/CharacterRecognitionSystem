img = imread('small.png');
img_grey = rgb2gray(img);
img_med = medfilt2(img_grey);
img_equalize = adapthisteq(img_grey);
img_stretch = imadjust(img_equalize,stretchlim(img_equalize),[]);
thresh = graythresh(img_stretch) * 256;
img_binary = img_stretch < thresh;
[labels, num] = bwlabel(img_binary);


st = regionprops(labels);
%imshow(img_stretch);
%hold on;
for k = 1 : length(st)
        thisBB = st(k).BoundingBox;
        %thisBB(1)
        %thisBB(2)
        %thisBB(3)
        %thisBB(4)
        centroid = st(k).Centroid;
        %rectangle('Position', [thisBB(1),thisBB(2),thisBB(3),thisBB(4)],'EdgeColor','r','LineWidth',2 );
        %hold on;
        %plot(centroid(1), centroid(2), '.', 'Color', 'red');
        %hold on;
        letter = imcrop(img_binary,[thisBB(1),thisBB(2),thisBB(3),thisBB(4)]);
        letter = imresize(letter,[20 20]);
        imwrite(letter,sprintf('s/%d.png',k));
end
