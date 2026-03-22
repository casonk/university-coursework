alpha = (1 + sqrt(5)) / 2;
p = 2;
p0 = -10;
p1 = -5;
q0 = p0^3 - 8;
q1 = p1^3 - 8;

threshold = 0.0001 ;

for i = 0:100000
    pn = p1 - (q1*(p1-p0)/(q1-q0));
    r = abs(pn - p) / (abs(p1 - p))^alpha;
    disp(["p:" pn "r" r]);

    if abs(pn - p) < threshold
        break
    end

    p0 = p1;
    q0 = q1;
    p1 = pn;
    q1 = p1^3 - 8;
end