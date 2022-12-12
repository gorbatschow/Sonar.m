function P = depth_to_pressure_sea_leroy_97(D,L)
% Arguments
%   D: depth \ m \ 0 < D < 4000
%   L: latitude \ degree \ -90 < L < 90
% Results
%   P: pressure \ kPa

    g = 9.7803*(1 + (5.3e-3)*sind(L).^2);
    kZ = (g - (2e-5)*D)./(9.80612 - (2e-5)*D);
    hZ = (1.00818e-2)*D + (2.465e-8)*(D.^2) ...
        - (1.25e-13)*(D.^3) + (2.8e-19) *(D.^4);
    P =  hZ.*kZ.*1e3;
end
