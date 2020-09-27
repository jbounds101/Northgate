if global.selected != noone
{
	impossible_action = false;
	if o_build_small_house.impossible_action and
	o_build_medium_house.impossible_action and
	o_build_large_house.impossible_action and
	o_build_school.impossible_action and
	o_build_holy_site.impossible_action and
	o_build_farm_hut.impossible_action and
	o_build_wall.impossible_action and
	o_build_road.impossible_action and
	o_build_bridge.impossible_action
	{
		impossible_action = true;	
	}
	
	if global.selected.able_to_build == false
	{
		impossible_action = true;	
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