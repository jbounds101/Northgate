if not op_upgrade_gui.upgrade_menu_active
{
	if global.selected != noone
	{
		if (floor(global.selected.experience / 100) >= 1) 
		and global.selected.level == 1 
		and global.selected.object_index == o_villager
		{
			x = lerp(x, start_x, 0.2);	
			if position_meeting(mouse_gui_x, mouse_gui_y, id) 
			{
				mouse_hovering = true;
				image_index = 1;
			
				if o_input.left_mouse_clicked
				{
					// Insert active code here
					
					op_upgrade_gui.upgrade_menu_active = true;
					instance_destroy(o_action_arrow);
			
				}
			}
			else
			{
				mouse_hovering = false;
				image_index = 0;
			}
		}
		else
		{
			x = lerp(x, end_x, 0.2);
			op_upgrade_gui.upgrade_menu_active = false;
		}
	}
	else
	{
		x = lerp(x, end_x, 0.2);
		op_upgrade_gui.upgrade_menu_active = false;
	}
}
else
{
	x = lerp(x, end_x, 0.2);
}