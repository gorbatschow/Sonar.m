function WS = sea_state_to_wind_speed_usnavy(SS)
% Inputs
%   SS: Sea State \ \ 0 < SS < 9
% Outputs
%   WS: Wind Speed \ m/s
    
    WS = zeros(size(SS));
    WS(SS < 2.0) = 1.92 + 3.25*SS(SS < 2.0);
    WS(SS >= 2.0) = -2.7 + 5.5*SS(SS >= 2.0);
    WS = WS*5.144444e-1; % knots to m/s
end