function [product] = Px_multiplication_extended_from_GF2(Px1, Px2, ctx)
    Px1 = Px1(1:find(Px1 ~= -inf, 1, 'last'));
    Px2 = Px2(1:find(Px2 ~= -inf, 1, 'last'));
    product = Px1(1) + Px2;
    for x_power = [1:length(Px1)-1]
        product = Px_add_extended_from_GF2(product, [repmat(-inf, 1, x_power), mod(Px1(x_power+1) + Px2, ctx.alpha_order)], ctx);
    end
end