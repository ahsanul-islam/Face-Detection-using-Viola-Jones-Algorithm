clear;
clc;
detector = vision.CascadeObjectDetector('MinSize',[25 25],'ScaleFactor',1.25);

Im = imread('sample_image.jpg');

bbox = detector(Im);


Imfaces=insertObjectAnnotation(Im,'Rectangle',bbox,'Face','TextBoxOpacity',0.8,'FontSize',22,'LineWidth',10);

imshow(Imfaces)
title('Detected faces');