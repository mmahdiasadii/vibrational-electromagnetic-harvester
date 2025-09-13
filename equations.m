function dydt = equations(t, Y)
    % Extract variables
    x = Y(1);
    x_dot = Y(2);
    V = Y(3);

    % Define constants
m = 8.4e-3; c = 0.154; k = 2.5e4;
k_em = 15; R = 30000; R_e = 300; L_e = 0.1;
w = 275*2*pi; f0 = m*0.3*9.8;
assignin('base','R',R);

    % Define equations
    x_dot_dot = (-c * x_dot - k * x - k_em / R * V - f0 * sin(w * t)) / m;
    V_dot = (k_em * x_dot - R_e / R * V - V) / (L_e / R);

    % Return derivatives
    dydt = [x_dot; x_dot_dot; V_dot];
end
