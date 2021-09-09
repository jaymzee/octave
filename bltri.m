function Y = bltri(f, R, fb, fs, N)
    % -- bltri (F, R, FB, FS, N)
    %     band limited triangle wave
    %
    %     F frequency
    %     R R^n decay
    %     FB = band limit frequency
    %     FS sample rate
    %     N length of output
    %
    x = zeros(1, N);
    x(1) = 1;
    k = 0;
    n = 1;
    while n * f < fb
        w = 2 * pi * n * f / fs;
        a = [1 -2*R*cos(w) R*R];
        b = R*sin(w);
        y(k+1,:) = (-1)**k * filter(b, a, x) / (n * n);
        k++;
        n = 2 * k + 1;
    end
    Y = 8 / (pi * pi) * sum(y, 1);
end
