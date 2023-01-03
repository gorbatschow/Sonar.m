function test_sound_speed_water_bilaniuk_112()
    
    test(1) = struct('T', 30, 'C', 1509.1513030646952);
    
    sonarm_eval_test(@sound_speed_water_bilaniuk_112, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundpurewater/