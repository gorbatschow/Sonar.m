function test_sound_speed_sea_unesco()
    
    test(1) = struct('T', 5, 'S', 35, 'P', 100, 'C', 1470.898591964845);
    
    sonarm_eval_test(@sound_speed_sea_unesco, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundseawater/index.html