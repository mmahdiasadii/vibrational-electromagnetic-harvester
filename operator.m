    % Plot results
    clc
    clear
    close all
    
        
    % Initial conditions
    x0 = 0; % initial displacement
    x_dot0 = 0; % initial velocity
    V0 = 0; % initial voltage
    tf = 2;
    [x, V, t] = main(x0, x_dot0, V0, tf);

        
    figure;
    plot(t, x*1000, 'b');
    xlabel('Time');
    ylabel('Displacement (mm)');
    grid on;


    figure;
    plot(t, V, 'g');
    xlabel('Time');
    ylabel('Voltage (V)');
    grid on;

    figure;
    plot(t, V./R*1000, 'r');
    xlabel('Time');
    ylabel('Current (mA)');
    grid on;
    
    figure;
    plot(t, abs(V.^2./R*1000), 'c');
    xlabel('Time');
    ylabel('Power (mW)');
    grid on;