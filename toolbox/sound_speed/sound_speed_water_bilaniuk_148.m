function C = sound_speed_water_bilaniuk_148(T)
% Inputs
%    T: temperature \ degree Celsius \ 0 < T < 100
% Outputs
%    C: speed of sound in pure water \ m/s

    k0 = +1.40238744e+3;
    k1 = +5.03836171e+0;
    k2 = -5.81172916e-2;
    k3 = +3.34638117e-4;
    k4 = -1.48259672e-6;
    k5 = +3.16585020e-9;

    C = k0*(T.^0) + k1*(T.^1) + k2*(T.^2) ...
        + k3*(T.^3) + k4*(T.^4) + k5*(T.^5);
end