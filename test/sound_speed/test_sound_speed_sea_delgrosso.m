function test_sound_speed_sea_delgrosso()
    
    test(1) = struct('T', 5, 'S', 35, 'P', 100, 'C', 1470.8074947307055);
    
    ok = false(numel(test), 1);
    for i = 1:numel(test)
        C = sound_speed_sea_delgrosso(test(i).T, test(i).S, test(i).P);
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