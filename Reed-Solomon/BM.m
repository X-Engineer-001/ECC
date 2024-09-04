function [] = BM(output_file, recieved, ctx)
    S = calculate_S_extended_from_GF2(recieved, ctx);
    Lambda = [[0], repmat(-inf, 1, ctx.t2-1)];
    B = Lambda;
    L = 0;
    for r = [1:ctx.t2]
        dr = alpha_sum_extended_from_GF2(Lambda(1:L+1) + S(r:-1:r-L), ctx);
        B = [[-inf], B(1:end-1)];
        if dr ~= 0
            if 2*L <= r-1
                [B, Lambda] = deal(Lambda - dr, Px_add_extended_from_GF2(Lambda, B + dr, ctx));
                L = r-L;
            else
                Lambda = Px_add_extended_from_GF2(Lambda, B + dr, ctx);
            end
        end
        dr = mod(dr, ctx.alpha_order);
        Lambda = mod(Lambda, ctx.alpha_order);
        Lambda(isnan(Lambda)) = -inf;
        B = mod(B, ctx.alpha_order);
        B(isnan(B)) = -inf;
        output_iteration_BM(output_file, r, dr, Lambda, B, L);
    end
    if find(Lambda ~= -inf, 1, 'last') - 1 == L
        Omega = S(1) + Lambda;
        for x_power = [1:ctx.t2-1]
            Omega = Px_add_extended_from_GF2(Omega, [repmat(-inf, 1, x_power), S(x_power+1) + Lambda(1:end-x_power)], ctx);
        end
        Chien_Forney_normal_extended_from_GF2(output_file, recieved, Omega, Lambda, ctx);
    end
end