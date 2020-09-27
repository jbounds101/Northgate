draw_self();



if global.selected != id
{
	if defending
	{
		draw_sprite_ext(s_defending_indicator, 0, x, y, 1, 1, 0, c_white, 1);
	}
	
	if move_points > 0
	{
		draw_sprite_ext(s_indicator, 0, x-3, y+2, 1, 1, 45, c_white, 1);	
	}
	if action_points > 0
	{
		draw_sprite_ext(s_indicator, 1, x+7.5, y+2, 1, 1, 45, c_white, 1);	
	}
	
	
}
else
{
	// Is selected
	draw_sprite(s_grid_indicator, 0, x, y)
	if defending
	{
		draw_sprite_ext(s_defending_indicator, 0, x, y, 1, 1, 0, c_white, 0.5);
	}
	
	
	draw_sprite(s_house_grid_indicator, 0, house.x, house.y);
}


