function charnum = char_counter(fname,character)
    fid = fopen(fname,'rt');
    if (fid<0 || ~ischar(character) || size(charater,2)>1)
        charnum = -1;
        return;
    end
    line = fgets(fid);
    count = 0;
    while ischar(line)
        n = size(line,2);
        for i = 1:n
            if (line(i)==character)
                count = count+1;
            end
        end
        line = fgets(fid);
    end
    fclose(fid);
    charnum = count;
end