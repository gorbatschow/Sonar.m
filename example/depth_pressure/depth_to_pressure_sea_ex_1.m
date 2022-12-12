function result = depth_to_pressure_sea_ex_1(func)
    D = 50;
    L = linspace(-90, 90, 1e3);
    P = func(D,L);

    fig = figure();
    plot(L,P); grid on; grid minor;
    
    global lang;
    if strcmpi(lang, 'ru')
        title(['D=' num2str(D) ' м']);
        xlabel('Широта, град.');
        ylabel('Давление, кПа');
    else
        title(['D=' num2str(D) ' m']);
        xlabel('Latitude, deg.');
        ylabel('Pressure, kPa');
    end

    result.data_type = 'figure';
    result.data = fig;
end