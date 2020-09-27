if global.selected == noone exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(f_hud);


if frac(global.selected.move_points) == 0
{
	var current_value_ = global.selected.move_points;
}
else
{
	var current_value_ = string_format(global.selected.move_points, 1, 1);
}
var max_value_ = global.selected.max_move_points;

var scale_ = 0.25;
var color_ = make_color_rgb(0, 204, 99);


draw_text_ext_transformed_color(x + sprite_width/2, y + sprite_height/2-1, string(current_value_) + "/" + string(max_value_), 10, 400, scale_, scale_, 0, color_, color_, color_, color_, 1);