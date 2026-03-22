function [output_tan_approx] = arctan_series(input_x, input_N)
%ARCTAN Summary of this function goes here
%   Detailed explanation goes here

output_tan_approx = 0;

for n = 1:input_N
    term = (-1)^(n+1) * input_x^(2*n-1) / (2*n-1);
    output_tan_approx = output_tan_approx + term;
end

end