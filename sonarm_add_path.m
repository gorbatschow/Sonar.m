function sonarm_add_path()
    base_path = fileparts(mfilename('fullpath'));
    addpath(genpath(fullfile(base_path, 'toolbox')));
    addpath(genpath(fullfile(base_path, 'example')))
    addpath(genpath(fullfile(base_path, 'test')));
end