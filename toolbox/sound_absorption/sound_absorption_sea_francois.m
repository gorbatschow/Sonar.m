function [alpha, Boric, MgSO4, H2O, C] = sound_absorption_sea_francois ...
    (T,S,D,f,pH)
% Arguments
%   T: temperature \ degree Celsius \ 
%      -2 < T < 22 for 10 Гц < f < 500 кГц
%      0 < T < 30 for f > 500 кГц
%   S: salinity \ ppt \
%       30 < S < 35 for 10 Гц < f < 500 кГц
%       0 < S < 40 for f > 500 кГц
%   D: depth \ m \ 
%       0 < D < 3500 for 10 Гц < f < 500 кГц
%       0 < D < 10000 for f > 500 кГц
%   f: frequency \ kHz
%   pH: "potential of hydrogen"
% Results
%   alpha: absorption of sound in seawater \ dB/km

    T_kel = 273 + T;

    % Sound speed
    C = 1412 + 3.21*T + 1.19*S + 0.0167*D;

    % Boric
    A1 = (8.86./C).*10.^(0.78.*pH-5);
    P1 = 1;
    f1 = 2.8 * sqrt(S./35).*10.^(4-1245./T_kel);
    Boric = (A1.*P1.*f1.*(f.^2))./((f.^2)+(f1.^2));

    % MgSO4
    A2 = 21.44*(S./C).*(1+0.025*T);
    P2 = 1 - (1.37e-4)*D + (6.2e-9)*(D.^2);
    f2 = (8.17*(10.^(8-1990./T_kel)))./(1+0.0018*(S-35));
    MgSO4 = (A2.*P2.*f2.*(f.^2))./((f.^2) + (f2.^2));

    % H2O
    if T <= 20
	    A3 = (4.937e-4) - (2.590e-5)*T ...
            + (9.11e-7)*(T.^2) - (1.5e-8)*(T.^3);
    else
        A3 = (3.964e-4) - (1.146e-5)*T ...
            + (1.45e-7)*(T.^2) - (6.5e-10)*(T.^3);
    end
    P3 = 1 - (3.83e-5)*D + (4.9e-10)*(D.^2);
    H2O = A3*P3*(f.^2);

    % Total
    alpha = Boric + MgSO4 + H2O;
end
