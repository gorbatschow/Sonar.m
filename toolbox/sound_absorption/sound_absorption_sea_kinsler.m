function [alpha, Boric, MgSO4, H2O] = sound_absorption_sea_kinsler ...
    (T,S,D,f,pH)
% Inputs
%   T: temperature \ degree Celsius
%   S: salinity \ ppt
%   D: depth \ m
%   f: frequency \ kHz
%   pH: "potential of hydrogen"
% Outputs
%   alpha: absorption of sound in seawater \ dB/km

    D = D*1e-3;
    f = f*1e3;

    % Boric
    f1 = 780.*exp(T/29);
    A = 0.083*(S/35).*exp(T/31-D/91+1.8*(pH-8));
    Boric = A./((f1.^2)+(f.^2)).*(f.^2);

    % MgSO4
    f2 = 42e3*exp(T/18);
    B = 22*(S/35)*exp(T/14-D/6);
    MgSO4 = B./((f2.^2)+(f.^2)).*(f.^2);

    % H2O
    C = (4.9e-10)*exp(-T/26-D/25);
    H2O = C.*(f.^2);

    % Total
    alpha = (Boric + MgSO4 + H2O);
end