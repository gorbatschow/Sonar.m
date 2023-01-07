function C = sound_speed_sea_delgrosso(T,S,P)
% Arguments
%   T: temperature \ degree Celsius \ 0 < T < 35 
%   S: salinity \ ppt \ 29 < S < 43
%   P: pressure \ kPa \ 0 < P < 98000 
% Results
%   C: speed of sound in seawater \ m/s

    C000 = 1402.392;
    CT1 = 0.5012285e1;
    CT2 = -0.551184e-1;
    CT3 = 0.221649e-3;
    CS1 = 0.1329530e1;
    CS2 = 0.1288598e-3;
    CP1 = 0.1560592;
    CP2 = 0.2449993e-4;
    CP3 = -0.8833959e-8;
    CST = -0.1275936e-1;
    CTP = 0.6353509e-2;
    CT2P2 = 0.2656174e-7;
    CTP2 = -0.1593895e-5;
    CTP3 = 0.5222483e-9;
    CT3P = -0.4383615e-6;
    CS2P2 = -0.1616745e-8;
    CST2 = 0.9688441e-4;
    CS2TP = 0.4857614e-5;
    CSTP =-0.3406824e-3;

    p = P*1.019716e-2;

    CT = CT1*T + CT2*(T.^2) + CT3*(T.^3);
    CS = CS1*S + CS2*(S.^2);
    CP = CP1*p + CP2*(p.^2) + CP3*(p.^3);
    CSTP = CTP*T.*p + CT3P*(T.^3).*p + CTP2*T.*(p.^2) + ...
        CT2P2*(T.^2).*(p.^2) + CTP3*T.*(p.^3) + ...
        CST*S.*T + CST2*S.*(T.^2) + CSTP*S.*T.*p + ...
        CS2TP*(S.^2)*T.*p + CS2P2*(S.^2).*(p.^2);

    C = C000 + CT + CS + CP + CSTP;
end
