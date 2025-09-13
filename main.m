function [x, V, t] = main(x0, x_dot0, V0, tf)
    % Define time span
    tspan = [0 tf]; % Adjust time span as needed

    % Solve the differential equations
    [t, Y] = ode45(@equations, tspan, [x0, x_dot0, V0]);

    % Extract solutions
    x = Y(:, 1);
    V = Y(:, 3);

end