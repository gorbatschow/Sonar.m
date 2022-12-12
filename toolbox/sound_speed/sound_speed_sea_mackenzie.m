function C = sound_speed_sea_mackenzie(T,S,D)
% Arguments
%   T: temperature \ degree Celsius \ -2 < T < 30 
%   S: salinity \ ppt \ 25 < S < 40
%   D: depth \ m \ 0 < D < 8000
% Results
%   C: speed of sound in seawater \ m/s

    C = 1448.96 + 4.591*T - (5.304e-2)*(T.^2) + (2.374e-4)*(T.^3) ...
        + 1.340*(S-35) + (1.630e-2)*D + (1.675e-7)*(D.^2) ...
        - (1.025e-2)*T.*(S-35) - (7.139e-13)*T.*(D.^3);
end

