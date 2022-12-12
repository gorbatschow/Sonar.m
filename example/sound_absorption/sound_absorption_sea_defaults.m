function [T,S,D,f,pH] = sound_absorption_sea_defaults()
    T = 4;
    S = 35;
    D = 10;
    f = logspace(-2, 2, 100);
    pH = 8;
end