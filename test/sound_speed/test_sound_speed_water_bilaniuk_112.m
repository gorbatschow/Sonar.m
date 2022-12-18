function test_sound_speed_water_bilaniuk_112()
    
    test(1) = struct('T', 30, 'C', 1509.1513030646952);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        C = sound_speed_water_bilaniuk_112(test(i).T);
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
% http://resource.npl.co.uk/acoustics/techguides/soundpurewater/