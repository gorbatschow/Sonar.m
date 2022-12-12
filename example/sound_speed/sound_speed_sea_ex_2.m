function result = sound_speed_sea_ex_2(func)
    T = 0:10:45;
    S = 30;
    D = [10 1e3 2e3 5e3]';
    
    C = func(T,S,D);

    D_str = arrayfun(@(x)num2str(x,'%.0f'), D, 'UniformOutput', false);
    T_str = arrayfun(@(x)num2str(x,'%.0f'), T, 'UniformOutput', false);
    C_str = arrayfun(@(x)num2str(x,'%.2f'), C, 'UniformOutput', false);
    
    global sonarm_lang
    if strcmpi(sonarm_lang, 'ru')
        D_str = cellfun(@(x)['$' x '\ м$'], D_str, 'UniformOutput', false);
        T_str = cellfun(@(x)['$' x '°\text{C}$'], T_str, 'UniformOutput', false);
        C_str = cellfun(@(x)['$' x '$'], C_str, 'UniformOutput', false);
    else
        D_str = cellfun(@(x)['$' x '\ m$'], D_str, 'UniformOutput', false);
        T_str = cellfun(@(x)['$' x '°\text{C}$'], T_str, 'UniformOutput', false);
        C_str = cellfun(@(x)['$' x '$'], C_str, 'UniformOutput', false);
    end
    str = [D_str C_str];
    str = [[{'$D$\\$T$'} T_str]; str];

    result.data_type= 'table';
    result.data = str;
end