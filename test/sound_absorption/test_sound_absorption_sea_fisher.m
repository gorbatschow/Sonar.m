function test_sound_absorption_sea_fisher()

    test(1) = struct('T', 8, 'S', 35, 'D', 50, 'f', 1, 'pH', 8, ...
        'Boric', 0.05104079252723604, ...
        'MgSO4', 0.0064049371924784805, ...
        'H2O',   0.00034516648528473915, ...
        'alpha', 0.057790896204999255);
    
    ok = false(numel(test), 4);
    for i = 1:numel(test)
        [alpha, Boric, MgSO4, H2O] = ...
            sound_absorption_sea_fisher( ...
            test(i).T, test(i).D, test(i).f);
        
        ok(i,:) = [abs(Boric - test(i).Boric) < eps ...
                   abs(MgSO4 - test(i).MgSO4) < eps ...
                   abs(H2O - test(i).H2O) < eps ...
                   abs(alpha - test(i).alpha) < eps];
    end

    stack = dbstack;
    if all(ok)
        disp([stack.name ' PASSED']);
    else
        warning([stack.name ' FAILED'])
    end
end

% See
% http://resource.npl.co.uk/acoustics/techguides/seaabsorption/