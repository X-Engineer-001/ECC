function [] = Euclidean(output_file, recieved, ctx)
    s = [repmat(-inf, 1, ctx.t2), 0];
    t = calculate_S_extended_from_GF2(recieved, ctx);
    A = struct("A11", [0], "A12", [-inf], "A21", [-inf], "A22", [0]);
    r = 0;
    while length(t) - 1 >= ctx.t
        r = r + 1;
        [Q, remainder] = Px_division_extended_from_GF2(s, t, ctx);
        [s, t] = deal(t, remainder);
        [A.A11, A.A12, A.A21, A.A22] = deal(A.A21, A.A22, ...
            Px_add_extended_from_GF2(A.A11, Px_multiplication_extended_from_GF2(Q,A.A21,ctx), ctx), ...
            Px_add_extended_from_GF2(A.A12, Px_multiplication_extended_from_GF2(Q,A.A22,ctx), ctx) ...
        );
        Lambda = mod(A.A22 - A.A22(1), ctx.alpha_order);
        Lambda(isnan(Lambda)) = -inf;
        output_iteration_Euclidean(output_file, r, s, t, Q, Lambda, A);
    end
    Omega = t - A.A22(1);
    Chien_Forney_normal_extended_from_GF2(output_file, recieved, Omega, Lambda, ctx);
end