/// @description Insert description here
// You can write your code in this editor
draw_set_color(color);
draw_primitive_begin(pr_trianglestrip);
	var size_list = ds_list_size(list_point);
	for (var i = 0; i<size_list-1; i++)
	{
		var _grid_point1 = list_point[| i];
		var _grid_point2 = list_point[| i + 1];
		var _x1 = _grid_point1[# 0, e_point.x];
		var _y1 = _grid_point1[# 0, e_point.y];
		var _w1 = _grid_point1[# 0, e_point.width];
		var _x2 = _grid_point2[# 0, e_point.x];
		var _y2 = _grid_point2[# 0, e_point.y];
		var _w2 = _grid_point2[# 0, e_point.width];
		
	
		
		var di = point_direction(_x1, _y1, _x2, _y2);
		image_angle = point_direction(_x1, _y1, _x2, _y2);//cant solve the issue with angle returning when mouse stops. Tried solving it with many methods.
	
		var ortho_di1 = di + 90;
		var ortho_di2 = di - 90;
		
		draw_vertex(_x1 + lengthdir_x(_w1, ortho_di1), _y1 + lengthdir_y(_w1, ortho_di1));
		draw_vertex(_x1 + lengthdir_x(_w1, ortho_di2), _y1 + lengthdir_y(_w1, ortho_di2));
		draw_vertex(_x2 + lengthdir_x(_w2, ortho_di1), _y2 + lengthdir_y(_w2, ortho_di1));
		draw_vertex(_x2 + lengthdir_x(_w2, ortho_di2), _y2 + lengthdir_y(_w2, ortho_di2));
	}



draw_primitive_end();

draw_self();