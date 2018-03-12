function [convo] = AlgConvo(x,y)
Mat = zeros((length(y)+length(x)-1),length(y))
transX = x';
transY = y';
for j = 1:length(y)
Mat(1:length(x),j) = Mat(1:length(x),j) + transX;
end
for i=1:(length(y))  
     Mat(:,i) = circshift(Mat(:,i),i-1)
end 

convo = Mat * transY;
end

