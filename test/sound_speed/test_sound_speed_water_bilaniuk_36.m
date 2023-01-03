function test_sound_speed_water_bilaniuk_36()
    
    test(1) = struct('T', 30, 'C', 1509.1424362962441);

    sonarm_eval_test(@sound_speed_water_bilaniuk_36, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundpurewater/