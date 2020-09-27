if o_settings.grid_active == true
{
	draw_set_alpha(0.5);
	for(var i = -1; i <= max(room_width, room_height); i+=16)
	{
	     draw_line(0, i, room_width, i);
	     draw_line(i, 0, i, room_height);
	}
	draw_set_alpha(1);
}


draw_set_alpha(0.2);
mp_grid_draw(global.grid);
draw_set_alpha(1);

