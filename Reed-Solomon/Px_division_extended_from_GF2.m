function [q, r] = Px_division_extended_from_GF2(dividend, divisor, ctx)
    dividend = dividend(1:find(dividend ~= -inf, 1, 'last'));
    divisor = divisor(1:find(divisor ~= -inf, 1, 'last'));
    if length(dividend) < length(divisor)
        q = [-inf];
        r = dividend;
    else
        r = flip(dividend);
        divisor = flip(divisor);
        q = [];
        while length(r) >= length(divisor)
            q = [mod(r(1) - divisor(1), ctx.alpha_order), q];
            r = Px_add_extended_from_GF2(r, divisor + q(1), ctx);
            next = find(r ~= -inf, 1, 'first');
            if next
                q = [repmat(-inf, 1, next-2), q];
                r = r(next:end);
            else
                r = [-inf];
                break;
            end
        end
        r = flip(r);
    end
end