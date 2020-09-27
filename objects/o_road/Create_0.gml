// Change these variables
unit_spawn = noone;
var object_controller_ = o_build_road;
// ----------------------


global.wood_count -= object_controller_.wood_cost;
global.stone_count -= object_controller_.stone_cost;

if global.selected != noone
{
	global.selected.action_points -= object_controller_.action_point_cost;
}

image_speed = 0;
