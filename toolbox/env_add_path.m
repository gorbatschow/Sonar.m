function env_add_path()
    base_path = fileparts(mfilename('fullpath'));
    addpath(fullfile(base_path, 'depth_pressure'));
    addpath(fullfile(base_path, 'sound_absorption'));
    addpath(fullfile(base_path, 'sound_speed'));
end