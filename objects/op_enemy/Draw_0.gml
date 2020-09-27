draw_self();

var damage_color_ = c_red;

if hit_points > 0 and hit_points != max_hit_points
{
	//draw_set_alpha(0.5)
	draw_sprite(s_damage_bar, 0, x, y+8);
	draw_rectangle_color(x+3, y+9, (2+x+(hit_points/max_hit_points)*10), y+9, damage_color_, damage_color_, damage_color_, damage_color_, false);
	//draw_set_alpha(1);
}


if debug_show_path
{
	if path != noone
	{
		draw_path(path, path_get_x(path, 0), path_get_y(path, 0), false);
	}
}