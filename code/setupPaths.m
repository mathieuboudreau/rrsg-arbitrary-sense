function paths = setupPaths()
%setupPaths Setup Data and code path environment
%
%   paths = setupPaths()
%
% IN
%
% OUT
%   paths structure with code, data, results paths
% EXAMPLE
%   setupPaths
%
%   See also
 
% Author:   Lars Kasper
% Created:  2019-04-18
% Copyright (C) 2019 Institute for Biomedical Engineering

%restoredefaultpath _MJB Needed to remove as it was purging externally loaded paths

paths.code = fileparts(mfilename('fullpath'));
paths.root = fullfile(paths.code, '..'); % parent folder of this one
paths.data = fullfile(paths.root, 'data');
paths.results = fullfile(paths.root, 'results');

addpath(genpath(paths.code));
[~,~] = mkdir(paths.results);