function summa = halfsum(matrix)
    sum = 0;
    [row col] = size(matrix);
    for i = 1:row
        for j = 1:col
            if (j>=i)
                sum = sum+matrix(i,j);
            end
        end
    end
    summa = sum;
end