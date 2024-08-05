function [summa,index] = max_sum(v,n)
    maxi=0;
    index = -1;
    for i = 1:(size(v,2)-n+1)
        sum = 0;
        for j = i:(i+n-1)
            sum = sum+v(j);
        end
        if (sum>maxi)
            maxi = sum;
            index = i;
        end
    end
    summa = maxi;
end