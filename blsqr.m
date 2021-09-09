function Y = blsqr(f, R, fb, fs, N)
    % -- blsqr (F, R, FB, FS, N)
    %     band limited square wave
    %
    %     F frequency
    %     R R^n decay
    %     FB = band limit frequency
    %     FS sample rate
    %     N length of output
    %
    # impulse
    x = zeros(1, N);
    x(1) = 1;
    # k should be the odd harmonics
    k = 1;
    while k * f < fb
        w = 2 * pi * k * f / fs;
        a = [1 -2*R*cos(w) R*R];
        b = R*sin(w);
        y(k,:) = filter(b, a, x) / k;
        k += 2;
    end
    Y = 4 / pi * sum(y, 1);
end
