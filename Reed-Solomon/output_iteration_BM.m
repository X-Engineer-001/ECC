function [] = output_iteration_BM(file, r, dr, Lambda, B, L)
    fprintf(file,'-----------BM_algorithm Iteration %u-----------\n', r);
    fprintf(file,'r = %u   dr = %u\n', r, dr);
    fprintf(file,'Lambda(X) = %s\n', format_Px(Lambda));
    fprintf(file,'B(X) = %s\n', format_Px(B));
    fprintf(file,'T(X) = %s\n', format_Px(Lambda));
    fprintf(file,'L = %u\n\n', L);
end