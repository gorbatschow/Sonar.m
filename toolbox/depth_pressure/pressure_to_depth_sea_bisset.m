function D = pressure_to_depth_sea_bisset(P,L)
% Arguments
%   P: pressure \ kPa
%   L: latitude \ degree \ -90 < L < 90
% Results
%   D: depth \ m

    P = P./9.80665e1;
    D = 9.7512*P./(1+(5.3e-3)*sind(L).^2) - (2.07e-4)*P.^2;
end