function result = sound_absorption_sea_thorp_ex_1()
    [~,~,~,f] = sound_absorption_sea_defaults();
    alpha = sound_absorption_sea_thorp(f);

    fig = figure();
    plot(f,alpha);
    set(gca, 'XScale', 'log');
    set(gca, 'YScale', 'log');
    grid on;
    ylim([1e-8 1e2]);

    global lang;
    if strcmpi(lang, 'ru')
        xlabel('Частота, кГц');
        ylabel('Поглощение, дБ/км');
    else
        xlabel('Frequency, kHz');
        ylabel('Absorption, dB/km');
    end

    result.data_type = 'figure';
    result.data = fig;
end