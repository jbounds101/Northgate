// Change these variables
unit_spawn = noone;
var object_controller_ = o_build_school;
// ----------------------

hit_points = object_controller_.hit_points;

global.wood_count -= object_controller_.wood_cost;
global.stone_count -= object_controller_.stone_cost;

if global.selected != noone
{
	global.selected.action_points -= object_controller_.action_point_cost;
}

image_speed = 0;
grid_added = false;
max_hit_points = hit_points;

change_spawn = false;

if unit_spawn != noone 
{
	spawn_x = x;
	spawn_y = y;

	while place_meeting(spawn_x, spawn_y, op_impassable) or change_spawn == false
	{
		change_spawn = true;
		
		spawn_x = choose(x-16, x, x, x+16);
	
		if spawn_x == x
		{
			spawn_y = choose(y-16, y+16);	
		}
		else
		{
			spawn_y = y;
		}	
	}

	unit = instance_create_layer(spawn_x, spawn_y, "Instances", unit_spawn);
	unit.house = id;
	unit.move_points = 0;
	unit.action_points = 0;
}
