function test_sound_absorption_air_iso()
    
    test(1) = struct('T', 21, 'RH', 50, 'P', 101.325, 'f', 1000, ...
        'alpha', 0.0048313242022907);
   
    sonarm_eval_test(@sound_absorption_air_iso, test);
end