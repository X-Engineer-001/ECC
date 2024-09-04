function [] = output_txt(file, ber, truncation_length)
    fprintf(file,'(2, 1, 4)convolutional code with Q = 2/4/8 and truncation length = %u\n', truncation_length);
    for snr = 2:0.5:10
        fprintf(file,'%s', format_line(snr, ber(:, snr*2-3)));
    end
end