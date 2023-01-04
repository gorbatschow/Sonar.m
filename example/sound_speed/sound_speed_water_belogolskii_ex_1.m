function result = sound_speed_water_belogolskii_ex_1()
    T = 0:1:100;
    P = [1e1 1e4]';
    C = sound_speed_water_belogolskii(T,P);
    
    fig = figure();
    plot(T,C);
    grid on; grid minor;
    ylim([1400 1650]);
    xlim([0 100]);
    
    global sonarm_lang;
    if strcmpi(sonarm_lang,'ru')
        xlabel('Температура, °C');
        ylabel('Скорость звука, м/с');
        leg_str = cell(size(P));
        for i = 1:numel(leg_str)
            leg_str{i} = ['P=' num2str(P(i), '%.0f') ' кПа'];
        end
        legend(leg_str, 'Location', 'SouthEast');
    else
        xlabel('Temperature, °C');
        ylabel('Sound speed, m/s');
        leg_str = cell(size(P));
        for i = 1:numel(leg_str)
            leg_str{i} = ['P=' num2str(P(i), '%.0f') ' kPa'];
        end
        legend(leg_str, 'Location', 'SouthEast');
    end

    result.data_type = 'figure';
    result.data = fig;
end