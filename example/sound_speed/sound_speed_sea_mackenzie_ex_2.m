function result = sound_speed_sea_mackenzie_ex_2()
    func = @(T,S,D) sound_speed_sea_mackenzie(T,S,D);
    result = sound_speed_sea_ex_2(func);
end

