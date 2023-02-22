function WS = sea_state_to_wind_speed_usho(SS)
% Inputs
%   SS: Sea State \ \ 0 < SS < 9
% Outputs
%   WS: Wind Speed \ m/s
    SS0 = 0:9;
    WS0 = [0.25 1.0 1.5 4.5 9.8 17.5 22.6 26.5 30.6 32.9];
    WS = interp1(SS0, WS0, SS, 'linear');
end