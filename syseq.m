format long;
f = @(x) [ x(1)^3 + x(2)-1 ; x(2)^3 - x(1) + 1 ]
x = [0.5; 0.5]
x = fsolve(f, x)
