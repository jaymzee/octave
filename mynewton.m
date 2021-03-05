format long;
n=8;
f = @(x) [ x(1)^3 + x(2)-1 ; x(2)^3 - x(1) + 1 ];
Df = @(x) [ 3*x(1)^2, 1; -1, 3*x(2)^2 ];
x = [0.5; 0.5];
for i = 1:n
    x = x - Df(x)\f(x);
end
x
