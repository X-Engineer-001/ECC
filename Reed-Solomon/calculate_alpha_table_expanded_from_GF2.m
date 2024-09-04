function [alpha_table] = calculate_alpha_table_expanded_from_GF2(alpha_satisfied_high_to_low)
    degree = length(alpha_satisfied_high_to_low) - 1;
    alpha_order = 2^degree - 1;
    alpha_table = dictionary(list_to_token([zeros([1, degree-1]), [1]]), 0);
    for power = [1:alpha_order-1]
        alpha_to_power = [zeros([1, alpha_order-1-power]), [1], zeros([1, power])];
        alpha_table(list_to_token(pmod(alpha_to_power, alpha_satisfied_high_to_low, 2))) = power;
    end
end