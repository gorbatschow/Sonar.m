function result = sound_absorption_sea_fisher_ex_1()

    [T,~,D,f,~] = sound_absorption_sea_defaults();
    [alpha, Boric, MgSO4, H20] = sound_absorption_sea_fisher(T,D,f);

    fig = figure();
    
    plot(f,alpha); hold on;
    plot(f,Boric);
    plot(f,MgSO4);
    plot(f,H20);
    
    set(gca, 'XScale', 'log');
    set(gca, 'YScale', 'log');
    grid on;
    
    global sonarm_lang;
    if strcmpi(sonarm_lang, 'ru')
        title(['T=' num2str(T) '°C, ' ...
               'D=' num2str(D) ' м']);
        xlabel('Частота, кГц');
        ylabel('Поглощение, дБ/км');
        legend({'Суммарное поглощение' ...
            'Борная кислота' 'Сульфат магния' 'Чистая вода'}, ...
            'Location', 'NorthWest');
    else
        title(['T=' num2str(T) '°C, ' ...
               'D=' num2str(D) ' m']);
        xlabel('Frequency, kHz');
        ylabel('Absorption, dB/km');
        legend({'Total' 'Boric' 'MgSO4' 'H2O'}, ...
            'Location', 'NorthWest');
    end

    result.data_type = 'figure';
    result.data = fig;
end