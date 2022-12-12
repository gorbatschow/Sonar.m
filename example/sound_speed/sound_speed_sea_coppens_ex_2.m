function result = sound_speed_sea_coppens_ex_2()
    func = @(T,S,D) sound_speed_sea_coppens(T,S,D);
    result = sound_speed_sea_ex_2(func);
end

