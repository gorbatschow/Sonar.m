function C = sound_speed_water_bilaniuk_112(T)
% Arguments
%    T: temperature \ degree Celsius \ 0 < T < 100
% Results
%    C: speed of sound in pure water \ m/s

    k0 = +1.40238742e+3;
    k1 = +5.03821344e+0;
    k2 = -5.80539349e-2;
    k3 = +3.32000870e-4;
    k4 = -1.44537900e-6;
    k5 = +2.99402365e-9;

    C = k0*(T.^0) + k1*(T.^1) + k2*(T.^2) ...
        + k3*(T.^3) + k4*(T.^4) + k5*(T.^5);
end