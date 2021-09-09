function x = unitstep(t)
    % -- unitstep
    %     unit step function (heaviside function)
    %
    %     unitstep (t) if t >= 0 returns 1 otherwise 0.
    %
    if t < 0
        x = 0
    else
        x = 1
    end
end
