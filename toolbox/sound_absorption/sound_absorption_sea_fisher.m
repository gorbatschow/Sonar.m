function [alpha, Boric, MgSO4, H2O] = sound_absorption_sea_fisher(T,D,f)
% Inputs
%   T: temperature \ degree Celsius
%   D: depth \ m
%   f: frequency \ kHz \ 10 < f < 400
% Outputs
%   alpha: absorption of sound in seawater \ dB/km

    T_kel = 273.1 + T;
    P = D ./ 10.0;
    f = f * 1e3;
    
    % Boric
    A1 = (1.03e-8) + (2.36e-10)*T - (5.22e-12)*(T.^2);
    P1 = 1;
    f1 = (1.32e3)*T_kel.*exp(-1700./T_kel);
    Boric = (A1.*P1.*f1.*(f.^2))./((f.^2)+(f1.^2));
    Boric = Boric * 8686;

    % MgSO4
    A2 = (5.62e-8) + (7.52e-10)*T;
    P2 = 1 - (10.3e-4)*P + (3.7e-7)*(P.^2);
    f2 = (1.55e7)*T_kel.*exp(-3052./T_kel);
    MgSO4 = (A2.*P2.*f2.*(f.^2))./((f.^2)+(f2.^2));
    MgSO4 = MgSO4 * 8686;

    % H2O
    A3 = (55.9 - 2.37*T + (4.77e-2)*(T.^2) - (3.48e-4)*(T.^3))*(1e-15);
    P3 = 1 - (3.84e-4)*P + (7.57e-8)*(P.^2);
    H2O = A3.*P3.*(f.^2);
    H2O = H2O * 8686;

    % Total
    alpha = (Boric + MgSO4 + H2O);
end
