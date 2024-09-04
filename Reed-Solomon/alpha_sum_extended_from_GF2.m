function [alpha_power] = alpha_sum_extended_from_GF2(powers, ctx)
    alpha_sum_polynomial = zeros([1, ctx.alpha_order]);
    for power = powers
        if power ~= -inf
            cursor = mod(power, ctx.alpha_order) + 1;
            alpha_sum_polynomial(cursor) = alpha_sum_polynomial(cursor) + 1;
        end
    end
    alpha_sum_polynomial = pmod(flip(mod(alpha_sum_polynomial, 2)), ctx.alpha_satisfied_high_to_low, 2);
    if ~any(alpha_sum_polynomial)
        alpha_power = -inf;
    else
        alpha_power = ctx.alpha_table(list_to_token(alpha_sum_polynomial));
    end
end