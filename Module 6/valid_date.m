function valid = valid_date(year,month,date)
    flag = true;
    if (~isscalar(year) || ~isscalar(month) || ~isscalar(date))
        flag = false;
    else
        if (year<=0 || month<=0 || date<=0)
            flag = false;
        else
            if (month>12 || date>31)
                flag = false;
            else
                if (month==4 || month==6 || month==9 || month==11)
                    if (date>30)
                        flag = false;
                    end
                elseif (month==2)
                    if (leap_year(year))
                        if (date>29)
                            flag = false;
                        end
                    else
                        if (date>28)
                            flag = false;
                        end
                    end
                end
            end
        end
    end
    valid = flag;
end

function isLeap = leap_year(year)
    if (mod(year,4)==0)
        if (mod(year,400)==0)
            isLeap = true;
        else
            if (mod(year,100)==0)
                isLeap = false;
            else
                isLeap = true;
            end
        end
    else
        isLeap = false;
    end
end
