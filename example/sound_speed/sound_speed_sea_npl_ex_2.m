function result = sound_speed_sea_npl_ex_2()
    func = @(T,S,D) sound_speed_sea_npl(T,S,D,0);
    result = sound_speed_sea_ex_2(func);
end

