%wav
function [y1, y2] = AR1_simulation(L)
    L=1000;
    x = randn(L,1);
    a1 = 0.9;
    a2 = 0.01;
    b = 1;
    y1 = filter(b, [1 -a1], x);
    y2 = filter(b, [1 -a2], x);
    [y1, y2] = AR1_simulation(L);
end

