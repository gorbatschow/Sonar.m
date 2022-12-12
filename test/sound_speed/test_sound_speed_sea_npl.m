function test_sound_speed_sea_npl()
    
    test(1) = struct('T', 5, 'S', 35, 'D', 100, 'L', 5, ...
        'C', 1472.2484129499999);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        C = sound_speed_sea_npl(test(i).T, test(i).S, test(i).D, test(i).L);
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