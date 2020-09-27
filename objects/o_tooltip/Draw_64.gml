draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(f_tooltip_bold);
draw_text_ext_transformed(x+2, y+1.5, tt_title, sep, width, 0.2, 0.2, 0);
	
var color_ = make_color_rgb(155, 152, 163);
draw_set_font(f_tooltip);
draw_text_ext_transformed_color(x+2, y+11, tt_specifics, sep, width, 0.15, 0.15, 0, 
color_, color_, color_, color_, 1);
	
color_ = make_color_rgb(175, 172, 183);
draw_text_ext_transformed_color(x+2, y+30, tt_description, sep, width, 0.15, 0.15, 0, 
color_, color_, color_, color_, 1);

color_ = make_color_rgb(125, 122, 133);
draw_set_font(f_tooltip_italic)
draw_text_ext_transformed_color(x+2, y+50, tt_lore, sep, width*1.5, 0.1, 0.1, 0, 
color_, color_, color_, color_, 1);
