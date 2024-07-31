function [a,s] = myRandom(low,high)
a = low+rand(3,4)*(high-low);
% Generates a '3x4' matrix of random floating points between low and high.
s = summation(a);
end

function summ = summation(a)
v = a(:);
summ = sum(v);
end