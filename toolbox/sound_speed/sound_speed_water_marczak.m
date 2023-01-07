function C = sound_speed_water_marczak(T)
% Inputs
%    T: temperature \ degree Celsius \ 0 < T < 95
% Outputs
%    C: speed of sound in pure water \ m/s

    k0 = +1.402385e+3;
    k1 = +5.038813e+0;
    k2 = -5.799136e-2;
    k3 = +3.287156e-4;
    k4 = -1.398845e-6;
    k5 = +2.787860e-9;

    C = k0*(T.^0) + k1*(T.^1) + k2*(T.^2) ...
        + k3*(T.^3) + k4*(T.^4) + k5*(T.^5);   
end