function test_sound_speed_sea_coppens()
    
    test(1) = struct('T', 5, 'S', 35, 'D', 100, 'C', 1472.2635299999997);
   
    sonarm_eval_test(@sound_speed_sea_coppens, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundseawater/index.html