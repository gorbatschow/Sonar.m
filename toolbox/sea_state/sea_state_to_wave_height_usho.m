function WH = sea_state_to_wave_height_usho(SS)
% Inputs
%   SS: Sea State \ \ 0 < SS < 9
% Outputs
%   WH: Significant wave height \ m

    SS0 = 0:9;
    WH0 = [0 0.15 0.6 1.2 3.0 3.9 4.9 9.2 12.2 12.2];
    WH = interp1(SS0, WH0, SS, 'linear');
end