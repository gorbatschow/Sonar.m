function test_sound_speed_sea_npl()
    
    test(1) = struct('T', 5, 'S', 35, 'D', 100, 'L', 5, ...
        'C', 1472.2484129499999);

    sonarm_eval_test(@sound_speed_sea_npl, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundseawater/index.html