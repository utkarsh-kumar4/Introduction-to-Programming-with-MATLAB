function [a,b,c,d] = corners(matrix)
    a = matrix(1,1);
    b = matrix(1,end);
    c = matrix(end,1);
    d = matrix(end,end);
end