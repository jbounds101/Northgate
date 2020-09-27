if global.selected != noone
{
	if (floor(global.selected.experience / 100) >= 1) 
	and global.selected.level == 1 
	and global.selected.object_index == o_villager
	and upgrade_menu_active == true
	{
		x = lerp(x, start_x, 0.2);	
		if position_meeting(mouse_gui_x, mouse_gui_y, id) 
		{
			mouse_hovering = true;
			
			if o_input.left_mouse_clicked
			{
				// Insert active code here
				
				
			
			}
		}
		else
		{
			mouse_hovering = false;
		}
	}
	else
	{
		x = lerp(x, end_x, 0.2);
	}
}
else
{
	x = lerp(x, end_x, 0.2);
}