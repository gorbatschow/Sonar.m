function test_sound_speed_water_bilaniuk_148()
    
    test(1) = struct('T', 30, 'C', 1509.14398483566);
    
    sonarm_eval_test(@sound_speed_water_bilaniuk_148, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundpurewater/