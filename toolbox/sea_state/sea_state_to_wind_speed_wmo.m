function WS = sea_state_to_wind_speed_wmo(SS)
% Inputs
%   SS: Sea State \ \ 0 < SS < 9
% Outputs
%   WS: Wind Speed \ m/s

    SS0 = 0:9;
    WS0 = [0.75 2.5 4.4 6.9 9.8 12.6 19.3 26.5 30.6 32.9];
    WS = interp1(SS0, WS0, SS, 'linear');
end