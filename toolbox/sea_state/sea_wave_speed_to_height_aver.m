function WH = sea_wave_speed_to_height_aver(WS)
% Inputs
%   WS: Wind speed \ m/s
% Outputs
%   WH: Average wave height \ m
    
    WS = WS*1.943844; % m/s to knots
    WH = 0.012*(WS.^2);
    WH = WH*0.3048; % feet to meters
end