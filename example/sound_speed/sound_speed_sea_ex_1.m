function result = sound_speed_sea_ex_1(func)
    T = -5:1:45;
    S = 30;
    D = [10 1e3 2e3 5e3]';
    P = depth_to_pressure_sea_leroy_97(D,0);
    C = func(T,S,D);
    
    fig = figure();
    plot(T,C);
    grid on; grid minor;
    ylim([1400 1650]);
    xlim([-10 50]);
    
    global lang;
    if strcmpi(lang,'ru')
        xlabel('Температура, °C');
        ylabel('Скорость звука, м/с');
        leg_str = cell(size(D));
        for i = 1:numel(leg_str)
            leg_str{i} = ['D=' num2str(D(i)) ' м'...
                ', ' 'P=' num2str(P(i), '%.0f') ' кПа'];
        end
        legend(leg_str, 'Location', 'SouthEast');
        title(['S=' num2str(S) '‰']);
    else
        xlabel('Temperature, °C');
        ylabel('Sound speed, m/s');
        leg_str = cell(size(D));
        for i = 1:numel(leg_str)
            leg_str{i} = ['D=' num2str(D(i)) ' m'...
                ', ' 'P=' num2str(P(i), '%.0f') ' kPa'];
        end
        legend(leg_str, 'Location', 'SouthEast');
        title(['S=' num2str(S) '‰']);
    end

    result.data_type = 'figure';
    result.data = fig;
end