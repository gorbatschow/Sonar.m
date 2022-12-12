function C = sound_speed_sea_npl(T,S,D,L)
% Arguments
%   T: temperature \ degree Celsius \ -1 < T < 30 
%   S: salinity \ ppt \ 0 < S < 42
%   D: depth \ m \ 0 < D < 12000
%   L: latitude \ degree \ -90 < L < 90
% Results
%   C: speed of sound in seawater \ m/s

    C = 1402.5 + 5*T - (5.44e-2)*(T.^2) + (2.1e-4)*(T.^3) ...
        + 1.33*S - (1.23e-2)*S.*T + (8.7e-5)*S.*(T.^2) ...
        + (1.56e-2)*D + (2.55e-7)*(D.^2) - (7.3e-12)*(D.^3) ...
        + (1.2e-6)*D.*(L-45) - (9.5e-13)*T.*(D.^3) + (3e-7)*(T.^2).*D ...
        + (1.43e-5)*S.*D;
end
