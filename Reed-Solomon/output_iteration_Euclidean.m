function [] = output_iteration_Euclidean(file, r, s, t, Q, Lambda, A)
    fprintf(file,'-----------Euclidean_algorithm Iteration %u-----------\n', r);
    fprintf(file,'r = %u\n', r);
    fprintf(file,'s(r) (X) = %s\n', format_Px(s));
    fprintf(file,'t(r) (X) = %s\n', format_Px(t));
    fprintf(file,'Q(r) (X) = %s\n', format_Px(Q));
    fprintf(file,'Lambda (X) = %s\n', format_Px(Lambda));
    fprintf(file,'A(r)(x) = [A11(x) A12(x) ; A21(x) A22(x)]\n');
    fprintf(file,'A11(r) (X) = %s\n', format_Px(A.A11));
    fprintf(file,'A12(r) (X) = %s\n', format_Px(A.A12));
    fprintf(file,'A21(r) (X) = %s\n', format_Px(A.A21));
    fprintf(file,'A22(r) (X) = %s\n\n', format_Px(A.A22));
end