function [mmr,mmm] = minimax(M)
    minir = min(M');
    maxir = max(M');
    mmr = abs(maxir-minir);
    vec=M(:);
    mini = min(vec);
    maxi = max(vec);
    mmm = maxi-mini;
end