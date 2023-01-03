function test_sound_speed_air_cramer()
<<<<<<< HEAD
    
    test(1) = struct('T', 20, 'RH', 50, 'P', 101.325, ...
        'C', 343.98688734488263);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        C = sound_speed_air_cramer(test(i).T, test(i).RH, test(i).P);
        ok(i,:) = abs(C - test(i).C) < eps;
    end
=======
    test(1) = struct( ...
        'T', 20, 'RH', 50, 'P', 101.325, 'C', 343.9868873448827);
>>>>>>> 7b4c8d4 (test module updated)

    sonarm_eval_test(@sound_speed_air_cramer, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/speedair/