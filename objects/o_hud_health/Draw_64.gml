if global.selected == noone exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(f_hud);

var current_value_ = global.selected.hit_points;
var max_value_ = global.selected.max_hit_points;

var scale_ = 0.25;
var color_ = make_color_rgb(230, 34, 34);

draw_text_ext_transformed_color(x + sprite_width/2, y + sprite_height/2-1, string(current_value_) + "/" + string(max_value_), 10, 400, scale_, scale_, 0, color_, color_, color_, color_, 1);