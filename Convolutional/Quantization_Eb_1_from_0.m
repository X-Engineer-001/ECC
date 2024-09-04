% Eb = 1; output bits in [0, Q-1], from the most confident 0 to the most confident 1.
function [q] = Quantization_Eb_1_from_0(r, Q)
    if Q == 2
        q = floor((sign(r) + 1.5) / 2);
    elseif Q == 4
        q = Quantization_Eb_1_from_0(r+0.5, 2) + Quantization_Eb_1_from_0(r, 2) + Quantization_Eb_1_from_0(r-0.5, 2);
    elseif Q == 8
        q = zeros(size(r));
        for shift = 0.75:-0.25:-0.75
            q = q + Quantization_Eb_1_from_0(r + shift, 2);
        end
    end
end