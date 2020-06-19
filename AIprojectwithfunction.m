clear
v = VideoReader('KittleTD.mp4');
frame = read(v,1);
%number of frames is 1602 across all 53 seconds%
Green = frame(:,:,1);
Red = frame(:,:,2);
Blue = frame(:,:,3);
imshow(frame)


%function [outputArg1,outputArg2] = untitled2(inputArg1,inputArg2)

%end

