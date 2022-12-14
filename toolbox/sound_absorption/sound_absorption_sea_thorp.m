function alpha = sound_absorption_sea_thorp(f)
% Inputs
%   f: frequency \ kHz
% Outputs
%   alpha: absorption of sound in seawater \ dB/km

    alpha = 1.0936*(0.1*(f.^2)./(1+f.^2) ...
          + 40*(f.^2)./(4100+f.^2));
end