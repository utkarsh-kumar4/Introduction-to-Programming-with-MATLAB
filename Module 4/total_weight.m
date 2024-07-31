function [tw,tv] = total_weight(vol,wd)
    tv=sum(vol);
    mat=vol.*wd;
    tw=sum(mat);
end