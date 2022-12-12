function result = sound_speed_sea_delgrosso_ex_2()
    func = @(T,S,D) sound_speed_sea_delgrosso( ...
        T,S,depth_to_pressure_sea_leroy_97(D,0));
    result = sound_speed_sea_ex_2(func);
end

