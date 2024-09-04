function [alpha_power] = Px_substitution_extended_from_GF2(Px, substitution_alpha_power, ctx)
    alpha_powers_to_sum = Px + [0:length(Px)-1]*substitution_alpha_power;
    alpha_power = alpha_sum_extended_from_GF2(alpha_powers_to_sum, ctx);
end