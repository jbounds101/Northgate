if global.action_selected == 3
{
	x = lerp(x, start_x, 0.2);
	if x == start_x
	{
		proper_position = true;
	}	
}
else
{
	x = lerp(x, end_x, 0.2);
	proper_position = false	
}


if global.selected != noone
{
	check_impossible_no_unit();
	
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
	
		global.build_selected = build;
	
		if global.build_selected == previous_build_selected
		{
			global.build_selected = noone;
			instance_destroy(o_action_arrow);
			op_player_movement_object.arrows_created = false;	
		}
	}
}