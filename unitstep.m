function x = unitstep(t)
    % -- unitstep (t)
    %     unit step function (heaviside function)
    %
    %     if t >= 0 returns 1 otherwise 0.
    %
    if t < 0
        x = 0
    else
        x = 1
    end
end
