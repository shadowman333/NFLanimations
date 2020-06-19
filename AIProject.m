clear
v = VideoReader('KittleTD.mp4');
frame = read(v,1);
%number of frames is 1602 across all 53 seconds%
Green = frame(:,:,1);
Red = frame(:,:,2);
Blue = frame(:,:,3);

kaz = size(frame);
uya = zeros(kaz);
count = 0;
for i = 1:size(frame,1)
    for j = 1:size(frame,2)
        if frame(i,j,1) <= 150 && frame(i,j,2) == 0 && frame(i,j,3) == 0
            uya(i,j) = 1;
            count = count + 1;
        end
    end
end
[xx,yy]=find(uya==1);
A = [xx,yy];
 
whitepixelsIdx = (Red > 150)
RGB = double(whitepixelsIdx);
RGB(end, end, 3) = 0;