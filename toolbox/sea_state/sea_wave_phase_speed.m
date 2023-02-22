function C = sea_wave_phase_speed(G,D,lambda)
% Inputs
%   G: Acceleration of gravity \ m/s^2
%   D: Water depth 
%   lambda: wave length \ m
% Outputs
%   C: Phase speed of wind waves \ m/s
    
    C = sqrt(G.*lambda/2/pi.*tanh(2*pi*D./lambda));
end