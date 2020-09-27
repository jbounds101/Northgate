draw_self();

var damage_color_ = c_white;

if hit_points > 0 and hit_points != max_hit_points
{
	draw_sprite(s_damage_bar, 0, x, y+8);
	draw_rectangle_color(x+3, y+9, (2+x+(hit_points/max_hit_points)*10), y+9, damage_color_, damage_color_, damage_color_, damage_color_, false);
	
}