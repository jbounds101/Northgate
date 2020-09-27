if global.selected != noone
{
	impossible_action = false;
	if checking_move_points and global.selected.move_points <= 0
	{
		impossible_action = true;
	}
	if checking_action_points and global.selected.action_points <= 0
	{
		impossible_action = true;
	}
	if checking_max_action_points and global.selected.action_points < global.selected.max_action_points
	{
		impossible_action = true;
	}
	if checking_for_object_next_to
	{
		if not object_next_to(object_to_check)	
		{
			if not object_next_to(o_spawner)
			{
				impossible_action = true;
			}
		}
	}
	
	if checking_for_surrounding
	{
		var objects_surrounding_ = 0;
		if instance_position(global.selected.x+24, global.selected.y+8, op_impassable) objects_surrounding_ += 1;
		if instance_position(global.selected.x+8, global.selected.y-8, op_impassable) objects_surrounding_ += 1;
		if instance_position(global.selected.x-8, global.selected.y+8, op_impassable) objects_surrounding_ += 1;
		if instance_position(global.selected.x+8, global.selected.y+24, op_impassable) objects_surrounding_ += 1;
		if (objects_surrounding_ == 4) 
		{
			impossible_action = true;
		}
	}

	if impossible_action == false
	{
		if position_meeting(mouse_gui_x, mouse_gui_y, id) 
		{
			mouse_hovering = true;
			image_index = 1;
		}
		else
		{
			mouse_hovering = false;
			image_index = 0;	
		}
	}
	else
	{
		image_index = 2;	
	}
}
else
{
	
	// No unit is selected	
	image_index = 2;	
}

if position_meeting(mouse_gui_x, mouse_gui_y, id) 
{
	if o_input.left_mouse_clicked
	{
		instance_destroy(o_action_arrow);
		op_player_movement_object.arrows_created = false;
	
		global.action_selected = action;
	
		if global.action_selected == previous_action_selected
		{
			global.action_selected = noone;
			instance_destroy(o_action_arrow, false);
			op_player_movement_object.arrows_created = false;	
		}
	}
}