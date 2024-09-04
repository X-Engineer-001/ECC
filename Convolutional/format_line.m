function [out] = format_line(snr, this_ber)
    out = [sprintf('SNR = %g(dB), BER =', snr), sprintf(' %g/', this_ber)];
    out(end) = newline;
end