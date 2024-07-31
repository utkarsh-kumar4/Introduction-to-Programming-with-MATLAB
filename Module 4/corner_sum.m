function xyz = corner_sum(mat)
    xyz=summation(mat);
end

function summ = summation(mat)
    summ = mat(1,1) + mat(1,end) + mat(end,1) + mat(end,end);
end