function alpha = sound_absorption_air_iso(T,RH,P,f)
% Arguments
%   T: temperature \ degree Celsius \ -20 < T < +50
%   RH: relative humidity \ percentage \ 10 < RH < 100
%   P: pressure \ kPa
%   f: frequency \ kHz \ 0.05 < f < 10
% Results
%   alpha: absorption of sound in air \ dB/m

    Kelvin = 273.15;
    T_ref = Kelvin + 20;
    T_kel = Kelvin + T;
    T_rel = T_kel / T_ref;
    T_01 = Kelvin + 0.01;
    Tho = 2239.1;
    Thn = 3352.0;
    P_ref = 101.325;
    P_rel = P / P_ref;
    
    P_sat_P_ref = 10.^(-6.8346*(T_01./T_kel).^(1.261)+4.6151);
    H = RH.*(P_sat_P_ref./P_rel);
    
    Fro = P_rel.*(24+(4.04e4)*H.*(0.02+H)./(0.391+H));
    Frn = P_rel.*(T_rel.^(-1/3)).*(9+280*H*exp(-4.170*(T_rel.^(-1/3)-1)));

    Xc = (1.84e-11)./P_rel*(T_rel.^(1/2));
    Xo = 0.01275*exp(-Tho./T_kel)./(Fro+((f.^2)./Fro));
    Xn = 0.10680*exp(-Thn./T_kel)./(Frn+((f.^2)./Frn));

    alpha = 8.686*(f.^2).*(Xc+(T_rel.^(-5/2)).*(Xo+Xn));
end

% http://resource.npl.co.uk/acoustics/techguides/absorption/

