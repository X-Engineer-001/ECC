truncation_lengths = [32, 12];
output_txt_names = ["result(a).txt", "result(b).txt"];
output_jpg_names = ["BER(a).jpg", "BER(b).jpg"];
len = 10000;
frames = 10000;
trellis = poly2trellis(5, [23,35]);
for test_case = 1:2
    truncation_length = truncation_lengths(test_case);
    ber = zeros(3, 17);
    
    for Q_bits = 1:1:3
        Q = 2^Q_bits;
        for snr = 2:0.5:10
            err=0;
            for i = 1:frames
                % frame = frame+1;
                u = randi([0, 1], len, 1); % u = randi(2, 1, len) - 1;
                c = convenc(u, trellis); % c = Encoder(u, len);
                s = c*2 - 1; % s = Modulation(c, len, Eb); Eb = 1
                r = awgn(s, snr);
                q = Quantization_Eb_1_from_0(r, Q); % q = Quantization(r, Q, len, Eb); Eb = 1
                % d = Demodulation(r, len);
                y = vitdec(q, trellis, truncation_length, 'trunc', 'soft', Q_bits); % y = Decoder(q, trellis, len);
                err = err + biterr(u, y); % err = err + ErrorCalculate(u, y, len);
            end
            ber(Q_bits, snr*2-3) = err/(frames*len);
        end
    end
    
    output_file = fopen(output_txt_names(test_case), 'w');
    output_txt(output_file, ber, truncation_length);
    fclose(output_file);
    output_jpg(output_jpg_names(test_case), ber, truncation_length);
end