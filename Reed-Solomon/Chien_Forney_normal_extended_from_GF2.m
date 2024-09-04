function [] = Chien_Forney_normal_extended_from_GF2(file, recieved, Omega, Lambda, ctx)
    Lambda_differential = Lambda(2:end);
    Lambda_differential(2:2:end) = -inf;
    error_locations = [];
    error_magnitudes = [];
    for location = [0:62]
        if Px_substitution_extended_from_GF2(Lambda, -location, ctx) == -inf
            error_locations = [error_locations, location];
            this_error_magnitude = mod(Px_substitution_extended_from_GF2(Omega, -location, ctx) - Px_substitution_extended_from_GF2(Lambda_differential, -location, ctx), ctx.alpha_order);
            error_magnitudes = [error_magnitudes, this_error_magnitude];
            recieved(location+1) = alpha_sum_extended_from_GF2([recieved(location+1), this_error_magnitude], ctx);
        end
    end
    fprintf(file, 'Error location Xi =%s\n', sprintf('  X^%u', error_locations));
    fprintf(file, 'Error magnitude Yi =%s\n\n', sprintf('  alpha^%u', error_magnitudes));
    fprintf(file, 'Decoded codeword = (%s)\n', sprintf('%u ', recieved));
end