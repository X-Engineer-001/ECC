function [] = output_preface(file)
    fprintf(file,'Px[a0,a1,a2,...ai,...] denotes the polynomial martix, where i is the power of X and ai is the power of the primitive element.\n');
    fprintf(file,'If ai = -Inf, then (alpha)^(ai) = 0 where alpha is primitive element in GF(2^m). And if ai = 0, then (alpha)^(ai) = 1.\n\n');
end