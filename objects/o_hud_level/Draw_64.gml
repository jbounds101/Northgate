if global.selected == noone exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(f_hud);

var scale_ = 0.15;
var color_ = c_white;

if global.selected.level == 5
{
	draw_text_ext_transformed_color(x + sprite_width/2, y + sprite_height/2, "LVL: 5 (MAX)", 10, 400, scale_, scale_, 0, color_, color_, color_, color_, 1);

}
else
{
	draw_text_ext_transformed_color(x + sprite_width/2, y + sprite_height/2, "LVL: " + string(global.selected.level) + " (" + string(global.selected.experience) + "/100)", 10, 400, scale_, scale_, 0, color_, color_, color_, color_, 1);
}