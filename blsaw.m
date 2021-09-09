function Y = blsaw(f, fb, fs, N)
    % -- blsaw (F, FB, FS, N)
    %     band limited sawtooth
    %
    %     F frequency
    %     FB = band limit frequency
    %     FS sample rate
    %     N length of output
    %
    x = zeros(1, N);
    x(1) = 1;
    R = 1;
    k = 1;
    while k * f < fb
        w = 2 * pi * k * f / fs;
        a = [1 -2*R*cos(w) R*R];
        b = R*sin(w);
        y(k,:) = (-1)**k * filter(b, a, x) / k;
        k++;
    end
    Y = sum(y, 1) / pi;
end
