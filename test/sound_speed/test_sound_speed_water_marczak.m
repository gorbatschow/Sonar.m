function test_sound_speed_water_marczak()
    
    test(1) = struct('T', 30, 'C', 1509.167167748);
    
    sonarm_eval_test(@sound_speed_water_marczak, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundseawater/index.html