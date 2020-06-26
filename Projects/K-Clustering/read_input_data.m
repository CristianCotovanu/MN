% reads cluster count and points from input files 
function [NC, points] = read_input_data(file_params, file_points)
	NC = load(file_params);
  points = cell2mat(struct2cell(load(file_points)));
end