function charnum = char_counter(fname,character)
    fid = fopen(fname,'rt');
    if (fid<0 || ~ischar(character))
        charnum = -1;
        return;
    end
    line = fgets(fid);
    count = 0;
    while ischar(line)
        count = count + sum(line == character);
        line = fgets(fid);
    end
    fclose(fid);
    charnum = count;
end
