function distance = get_distance(city1,city2)
    persistent raw;
    [~,~,raw] = xlsread('Distances.xlsx');
    [row,col] = size(raw);
    city1_index = -1;
    city2_index = -1;
    for i = 2:row
        if (strcmp(raw(i,1),city1)==1)
            city1_index = i;
        end
    end
    for j = 2:col
        if (strcmp(raw(1,j),city2)==1)
            city2_index = j;
        end
    end
    if (city1_index == -1 || city2_index == -1)
        distance = -1;
    else
        distance = raw{city1_index,city2_index};
    end
end