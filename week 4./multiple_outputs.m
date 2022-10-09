function [top_left,top_right,bottom_left,bottom_right] = corners(mat)
top_left = mat(1,1);
top_right = mat(1,end);
bottom_left = mat(end,1);
bottom_right = mat(end,end);
end
