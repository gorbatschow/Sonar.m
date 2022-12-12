function D = pressure_to_depth_sea_leroy_97(P,L)
% Arguments
%   P: pressure \ kPa
%   L: latitude \ degree \ -90 < L < 90
% Results
%   D: depth \ m

    P = P*1e-3;
    G = 9.780318*(1 + (5.2788e-3)*(sind(L).^2) - (2.36e-5)*(sind(L).^4));
    D = (9.72659e2)*P - (2.512e-1)*(P.^2) + (2.279e-4)*(P.^3) - (1.82e-7)*(P.^4);
    D = D./(G + (1.092e-4).*P);
end
