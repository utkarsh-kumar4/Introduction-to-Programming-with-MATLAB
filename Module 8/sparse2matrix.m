function matrix = sparse2matrix(cell_vector)
    row = cell_vector{1}(1);
    col = cell_vector{1}(2);
    mat = cell_vector{2}*(ones(row,col));
    last = size(cell_vector,2);
    for i = 3:last
        x = cell_vector{i}(1);
        y = cell_vector{i}(2);
        value = cell_vector{i}(3);
        mat(x,y) = value;
    end
    matrix = mat;
end