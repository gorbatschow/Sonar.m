function WH = sea_wave_speed_to_height_rmsd(WS)
% Inputs
%   WS: Wind Speed \ m/s
% Outputs
%   WH: Wave height RMS displacement \ m
    
    WS = WS*1.943844; % m/s to knots
    WH = 0.0046*(WS.^2);
    WH = WH*0.3048; % feet to meters
end