ctx.alpha_satisfied_high_to_low = [1, 0, 0, 0, 0, 1, 1];
ctx.alpha_table = calculate_alpha_table_expanded_from_GF2(ctx.alpha_satisfied_high_to_low);
ctx.degree = length(ctx.alpha_satisfied_high_to_low) - 1;
ctx.alpha_order = 2^ctx.degree - 1;
ctx.t2 = 8;
ctx.t = ctx.t2/2;

output_file = fopen('q1.txt', 'w');
output_preface(output_file);
fclose(output_file);
output_file = fopen('q1.txt', 'a');
recieved = [-inf, -inf, 11, -inf, -inf, 5, -inf, 1, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, 37, -inf, -inf];
BM(output_file, recieved, ctx);
fclose(output_file);

output_file = fopen('q2.txt', 'w');
output_preface(output_file);
fclose(output_file);
output_file = fopen('q2.txt', 'a');
recieved = [-inf, -inf, 11, -inf, -inf, 5, -inf, 1, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, 37, -inf, -inf];
Euclidean(output_file, recieved, ctx);
fclose(output_file);

output_file = fopen('q3.txt', 'w');
output_preface(output_file);
fclose(output_file);
output_file = fopen('q3.txt', 'a');
recieved = [36, 4, 33, 21, 56, 52, 47, 13, 39, 0, 5, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, 11, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, 37, -inf, -inf];
BM(output_file, recieved, ctx);
fclose(output_file);

output_file = fopen('q4.txt', 'w');
output_preface(output_file);
fclose(output_file);
output_file = fopen('q4.txt', 'a');
recieved = [36, 4, 33, 21, 56, 52, 47, 13, 39, 0, 5, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, 11, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, 37, -inf, -inf];
Euclidean(output_file, recieved, ctx);
fclose(output_file);