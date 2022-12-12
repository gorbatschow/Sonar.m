function test_sound_absorption_air_iso()
    
    test(1) = struct('T', 21, 'RH', 50, 'P', 101.325, 'f', 1000, ...
        'alpha', 0.004829827884631664);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        alpha = sound_absorption_air_iso(test(i).T, test(i).RH, ...
            test(i).P, test(i).f);
        ok(i,:) = abs(alpha - test(i).alpha) < eps;
    end

    stack = dbstack;
    if all(ok)
        disp([stack.name ' PASSED']);
    else
        warning([stack.name ' FAILED'])
    end
end