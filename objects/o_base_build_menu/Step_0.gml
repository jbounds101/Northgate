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

if position_meeting(mouse_gui_x, mouse_gui_y, id) 
{
	mouse_hovering = true;
}
else
{
	mouse_hovering = false;	
}
