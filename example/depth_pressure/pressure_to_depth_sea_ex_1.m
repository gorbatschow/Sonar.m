function result = pressure_to_depth_sea_ex_1(func)
    P = 502;
    L = linspace(-90, 90, 1e3);
    D = func(P,L);

    fig = figure();
    plot(L,D); grid on; grid minor;

    global lang;
    if strcmpi(lang, 'ru')
        title(['P=' num2str(P) ' кПа']);
        xlabel('Широта, град.');
        ylabel('Глубина, метры');
    else
        title(['P=' num2str(P) ' kPa']);
        xlabel('Latitude, deg.');
        ylabel('Depth, m');
    end

    result.data_type = 'figure';
    result.data = fig;
end