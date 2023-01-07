function result = sound_absorption_air_iso_ex_1()
    T = 21;
    RH = 50;
    P = 101.325;
    f = linspace(0.1, 10, 1e3);
    
    alpha = sound_absorption_air_iso_annex(T,RH,P,f);

    fig = figure();
    plot(f,alpha);
    set(gca, 'XScale', 'log');
    set(gca, 'YScale', 'log');
    grid on;
    %ylim([1e-8 1e2]);

    global sonarm_lang;
    if strcmpi(sonarm_lang, 'ru')
        xlabel('Частота, кГц');
        ylabel('Поглощение, дБ/м');
    else
        xlabel('Frequency, kHz');
        ylabel('Absorption, dB/m');
        title(['T='  num2str(T)  '°C, ' ...
               'RH=' num2str(RH) '%, ' ...
               'P='  num2str(P)  ' kPa']);
    end

    result.data_type = 'figure';
    result.data = fig;
end