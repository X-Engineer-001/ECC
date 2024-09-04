function [sum] = Px_add_extended_from_GF2(Px1, Px2, ctx)
    if length(Px1) < length(Px2)
        [Px1, Px2] = deal(Px2, Px1);
    end
    sum = [];
    for i = [1:length(Px2)]
        sum = [sum, alpha_sum_extended_from_GF2([Px1(i), Px2(i)], ctx)];
    end
    sum = [sum, Px1(length(Px2)+1:end)];
end