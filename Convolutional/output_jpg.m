function [] = output_jpg(file_name, ber, truncation_length)
    semilogy(ber', '.-');
    title(sprintf('(2, 1, 4)Convolutional code(Truncation length=%u, Q=2/4/8)', truncation_length));
    grid on;
    xlabel ('Eb/N0');
    xticks(1:17);
    xticklabels(2:0.5:10);
    xlim([1, 17])
    ylabel('Ber');
    ylim([10^(-8), 1]);
    yticks(logspace(-8, 0, 9));
    legend('Q = 2', 'Q = 4', 'Q = 8');
    saveas(gcf, file_name, 'jpg');
    close(gcf);
end