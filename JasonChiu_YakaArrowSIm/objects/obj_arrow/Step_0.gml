/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;


var size_list = ds_list_size(list_point);
if size_list >= length
{
	var _grid_point = list_point[| 0];
	if ds_exists(_grid_point, ds_type_grid)
	{
		ds_grid_destroy(_grid_point);
	}
	ds_list_delete(list_point,0);
}

var _grid_point = ds_grid_create(1, e_point.length);
_grid_point[# 0, e_point.x] = mouse_x;
_grid_point[# 0, e_point.y] = mouse_y;
_grid_point[# 0, e_point.width] = width;
ds_list_add(list_point, _grid_point);


var size_list = ds_list_size(list_point);
for (var i = 0; i< size_list; i++)
	{
		var _grid_point = list_point[| i];
		_grid_point[# 0, e_point.width] *= 0.9;
	}
	
