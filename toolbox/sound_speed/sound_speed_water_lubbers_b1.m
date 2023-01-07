function C = sound_speed_water_lubbers_b1(T)
% Inputs
%    T: temperature \ degree Celsius \ 15 < T < 35
% Outputs
%    C: speed of sound in pure water \ m/s

    C = 1404.3 + 4.7*T - 0.04*(T.^2);
end