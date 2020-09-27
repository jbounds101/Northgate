selected_upgrade_unit = o_build_indicator.build_elements[global.build_selected];


if selected_upgrade_unit == noone exit;



draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(f_tooltip_bold);
draw_text_ext_transformed(x+2, y+2, selected_upgrade_unit.tt_title, sep, width, 0.15, 0.15, 0);
	

var color_;
color_ = make_color_rgb(201, 197, 212);
draw_text_ext_transformed_color(x+2, y+9.5, "STATS", sep, width, 0.15, 0.15, 0,
color_, color_, color_, color_, 1);
color_ = make_color_rgb(155, 152, 163);
draw_set_font(f_tooltip);
draw_text_ext_transformed_color(x+1.5, y+13, selected_upgrade_unit.tt_specifics, sep, width, 0.14, 0.14, 0, 
color_, color_, color_, color_, 1);
	
	
color_ = make_color_rgb(175, 172, 183);
draw_set_font(f_tooltip);
draw_text_ext_transformed_color(x+2, y+58, selected_upgrade_unit.tt_description, sep, width, 0.13, 0.13, 0, 
color_, color_, color_, color_, 1);

color_ = make_color_rgb(125, 122, 133);
draw_set_font(f_tooltip_bold)
draw_text_ext_transformed_color(x+2, y+81, tt_warning, sep, width*1.3, 0.11, 0.11, 0, 
color_, color_, color_, color_, 1);

