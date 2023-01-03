function test_sound_speed_sea_delgrosso()
    
    test(1) = struct('T', 5, 'S', 35, 'P', 100, 'C', 1470.8074947307055);
    
    sonarm_eval_test(@sound_speed_sea_delgrosso, test);
end

% See:
% http://resource.npl.co.uk/acoustics/techguides/soundseawater/index.html