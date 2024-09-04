function [S] = calculate_S_extended_from_GF2(recieved, ctx)
    S = [];
    for i = [1:ctx.t2]
        S = [S, Px_substitution_extended_from_GF2(recieved, i, ctx)];
    end
end