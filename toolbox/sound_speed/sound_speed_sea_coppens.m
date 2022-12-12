function C = sound_speed_sea_coppens(T,S,D)
% Arguments
%   T: temperature \ degree Celsius \ -2 < T < 35 
%   S: salinity \ ppt \ 0 < S < 42
%   D: depth \ m \ 0 < D < 4000
% Results
%   C: speed of sound in seawater \ m/s

    d = D.*(1e-3);
    t = T.*(1e-1);

    C = 1449.05 + 45.7*t - 5.21*(t.^2) + 0.23*(t).^3 ...
        + (1.333 - 0.126*t + 0.009*(t.^2)).*(S - 35) ...
        + (16.23 + 0.253*t).*d + (0.213-0.1*t).*(d.^2) ...
        + (0.016 + 0.0002*(S-35)).*(S-35).*t.*d;
end
