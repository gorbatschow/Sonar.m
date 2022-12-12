function P = depth_to_pressure_sea_leroy_68(D,L)
% Arguments
%   D: depth \ m
%   L: latitude \ degree \ -90 < L < 90
% Results
%   P: pressure \ kPa

    P = 0.102506*(1+(5.28e-3)*sind(L).^2).*D+(2.54e-7)*(D.^2);
    P = P.*9.80665e1;
end