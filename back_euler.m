# eulers method using backward differences
# y_n+1 = y_n + dt f(t_n+1, y_n+1)

f = @(t, y) t.^2 - y;
h = 0.8;
n = 100

t(1) = 0.5;
y(1) = 10;

for j = 1:n
    t(j+1) = t(j) + h;
    y(j+1) = fzero(@(z) z - y(j) - h*f(t(j+1),z), y(j));
end

plot(t, y);
