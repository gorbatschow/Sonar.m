function result = sound_speed_water_ex_1(func)
    T = 0:1:100;
    C = func(T);
    
    fig = figure();
    plot(T,C);
    grid on; grid minor;
    ylim([1400 1650]);

    global sonarm_lang;
    if strcmpi(sonarm_lang,'ru')
        xlabel('Температура, °C');
        ylabel('Скорость звука, м/с');
    else
        xlabel('Temperature, °C');
        ylabel('Sound speed, m/s');
    end

    result.data_type = 'figure';
    result.data = fig;
end