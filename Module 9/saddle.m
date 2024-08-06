function indices = saddle(M)
    [row,col] = size(M);
    indices = [];
    for i = 1:row
        maxi = max(M(i,:));
        for j = 1:col
            mini = min(M(:,j));
            if (maxi == mini)
                indices = [indices; i j];
            end
        end
    end         
end