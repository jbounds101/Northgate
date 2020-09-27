draw_self();

if global.action_selected == 3
{
	if image_alpha == 1
	{
		if mouse_facing == 0 and image_index == 0
		{
			draw_set_alpha(0.4);
			draw_sprite(build[global.build_selected], 0, global.selected.x+16, global.selected.y);	
			draw_set_alpha(1);
		}
		if mouse_facing == 1 and image_index == 1
		{
			if global.build_selected == 8
			{
				draw_set_alpha(0.4);
				draw_sprite(build[global.build_selected], 1, global.selected.x, global.selected.y-16);	
				draw_set_alpha(1);
			}
			else
			{
				draw_set_alpha(0.4);
				draw_sprite(build[global.build_selected], 0, global.selected.x, global.selected.y-16);	
				draw_set_alpha(1);
			}
		}
		if mouse_facing == 2 and image_index == 2
		{
			draw_set_alpha(0.4);
			draw_sprite(build[global.build_selected], 0, global.selected.x-16, global.selected.y);	
			draw_set_alpha(1);
		}
		if mouse_facing == 3 and image_index == 3
		{
			if global.build_selected == 8
			{
				draw_set_alpha(0.4);
				draw_sprite(build[global.build_selected], 1, global.selected.x, global.selected.y+16);	
				draw_set_alpha(1);
			}
			else
			{
				draw_set_alpha(0.4);
				draw_sprite(build[global.build_selected], 0, global.selected.x, global.selected.y+16);	
				draw_set_alpha(1);
			}
		}
	}
}