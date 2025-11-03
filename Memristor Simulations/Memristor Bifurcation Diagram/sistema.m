function dydt = sistema(t, y, a, alpha, beta, b, c, d)
    dydt = zeros(4, 1);
    dydt(1) = a * (y(2) - (alpha + beta * y(4)^2) * y(1));
    dydt(2) = y(1) * y(3);
    dydt(3) = c - b * y(2)^4;
    dydt(4) = d * y(1);
end
