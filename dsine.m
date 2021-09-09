function [b, a] = dsine(w, R)
    % -- dsine (w, R)
    %     digital sine wave generator
    %
    %     w digital frequency
    %     R decay rate
    %
    a = [1 -2*R*cos(w) R*R];
    b = R*sin(w);
end
