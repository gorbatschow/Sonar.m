function result = sound_absorption_sea_thorp_ex_2()
    f = [1e-2 1e-1 1e0 1e1 1e2];
    
    alpha = sound_absorption_sea_thorp(f);
    alpha_str = arrayfun(@(x)['$' num2str(x,'%.3E') '$'], alpha, ...
        'UniformOutput', false);
    
    f_str = arrayfun(@(x) ['$' num2str(x,'%.2f') '\ \text{кГц}$'], f, ...
        'UniformOutput', false);
    str = [f_str; alpha_str];
    
    result.data_type = 'table';
    result.data = str;  
end