if global.action_selected != noone
{
	x = 87+(27*global.action_selected);
	y = 151;
	image_alpha = 1;
	
	if global.selected != noone
	{
		if gui_elements[global.action_selected].impossible_action == true
		{
			image_index = 1;
		}
		else
		{
			image_index = 0;	
		}
	}
	else
	{
		image_index = 1;	
	}
	
}
else
{
	image_alpha = 0;	
}