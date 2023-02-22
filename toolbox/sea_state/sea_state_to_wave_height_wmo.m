function WH = sea_state_to_wave_height_wmo(SS)
% Inputs
%   SS: Sea State \ \ 0 < SS < 9
% Outputs
%   WH: Significant wave height \ m

    SS0 = 0:9;
    WH0 = [0 0.15 0.46 0.91 1.8 3.2 5.0 7.6 11.4 13.7];
    WH = interp1(SS0, WH0, SS, 'linear');
end