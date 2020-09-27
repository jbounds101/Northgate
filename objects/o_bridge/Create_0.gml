// Change these variables
unit_spawn = noone;
var object_controller_ = o_build_bridge;
// ----------------------

mp_grid_clear_cell(global.grid, x/16, y/16);

global.wood_count -= object_controller_.wood_cost;
global.stone_count -= object_controller_.stone_cost;

if global.selected != noone
{
	global.selected.action_points -= object_controller_.action_point_cost;
}

bridge = noone;
image_speed = 0;
depth = -50;

var impassable_object_ = instance_place(x, y, op_impassable);

if impassable_object_ != noone
{
	instance_destroy(impassable_object_);	
}