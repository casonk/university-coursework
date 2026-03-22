function [output_error_lim] = arctan_error(input_x1,input_x2,input_N)
%ARCTAN_ERROR Summary of this function goes here
%   Detailed explanation goes here

itter = 2*input_N + 1;
output_error_lim = 4*(abs(input_x1)^itter + abs(input_x2)^itter) / itter;

end

