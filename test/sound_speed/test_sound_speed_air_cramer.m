function test_sound_speed_air_cramer()
    
    test(1) = struct('T', 20, 'RH', 50, 'P', 101.325, ...
        'C', 343.98688734488263);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        C = sound_speed_air_cramer(test(i).T, test(i).RH, test(i).P);
        ok(i,:) = abs(C - test(i).C) < eps;
    end

    stack = dbstack;
    if all(ok)
        disp([stack.name ' PASSED']);
    else
        warning([stack.name ' FAILED'])
    end
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/speedair/