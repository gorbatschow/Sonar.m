function result = sound_speed_sea_unesco_ex_1()
    func = @(T,S,D) sound_speed_sea_unesco( ...
        T,S,depth_to_pressure_sea_leroy_97(D,0));
    result = sound_speed_sea_ex_1(func);
end

