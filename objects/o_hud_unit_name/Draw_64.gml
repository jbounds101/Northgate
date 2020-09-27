if global.selected == noone exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(f_hud);

var current_value_ = global.selected.name;

var scale_ = 0.2;
var color_ = c_white;

draw_text_ext_transformed_color(x + sprite_width/2, y + sprite_height/2, string(current_value_), 10, 400, scale_, scale_, 0, color_, color_, color_, color_, 1);