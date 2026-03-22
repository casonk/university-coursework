format long;

for n = 1:6
    pi_star = 4*(arctan_series((1/2),n) + arctan_series((1/3),n));
%     disp(pi_star)
    disp(["n: " n ", pi*: " pi_star ", absolute_error: " abs(pi-pi_star)])
end

for n = 1:6
    disp(["n: " n " error limit: " arctan_error((1/2),(1/3),n)])
end