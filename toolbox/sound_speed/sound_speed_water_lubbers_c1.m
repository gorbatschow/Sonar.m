function C = sound_speed_water_lubbers_c1(T)
% Arguments
%    T: temperature \ degree Celsius \ 10 < T < 40
% Results
%    C: speed of sound in pure water \ m/s

    C = 1405.03 + 4.624*T - (3.83e-2)*(T.^2);
end