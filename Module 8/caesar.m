function coded = caesar(str,shift)
    row = size(str,2);
    shift = mod(shift,95);
    answer = "";
    for i = 1:row
        new_shift = int8(str(i))+shift;
        if (new_shift>126)
            shift = shift-95;
        end
        new_shift = int8(str(i))+shift;
        answer = answer+string(char(new_shift));
    end
    coded = char(answer);
end