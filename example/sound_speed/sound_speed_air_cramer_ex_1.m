function result = sound_speed_air_cramer_ex_1()
    T = linspace(0,30,100);
    RH = 50;
    P = 101.325;

    C = sound_speed_air_cramer(T,RH,P);

    fig = figure();
    plot(T,C);
    grid on; grid minor;

    global lang;
    if strcmpi(lang, 'ru')
        xlabel('Температура, °C');
        ylabel('Скорость звука, м/с');
        leg_str = cell(size(P));
        for i = 1:numel(leg_str)
            leg_str{i} = ['P=' num2str(P(i), '%.0f') ' кПа'];
        end
        legend(leg_str, 'Location', 'SouthEast');
        title(['RH=' num2str(RH) '%']);
    else
        xlabel('Temperature, °C');
        ylabel('Sound speed, m/s');
        leg_str = cell(size(P));
        for i = 1:numel(leg_str)
            leg_str{i} = ['P=' num2str(P(i), '%.0f') ' kPa'];
        end
        legend(leg_str, 'Location', 'SouthEast');
        title(['RH=' num2str(RH) '%']);
    end

    result.data_type = 'figure';
    result.data = fig;
end