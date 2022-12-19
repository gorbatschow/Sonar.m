function test_sound_speed_water_marczak()
    
    test(1) = struct('T', 30, 'C', 1509.167167748);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        C = sound_speed_water_marczak(test(i).T);
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
% http://resource.npl.co.uk/acoustics/techguides/soundseawater/index.html