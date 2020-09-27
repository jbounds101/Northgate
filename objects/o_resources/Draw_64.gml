
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

draw_set_font(f_hud);

draw_text_ext_transformed(x+1, y+6, global.wood_count, 10, -1, 0.4, 0.4, 0);

draw_sprite_ext(s_wood_icon, 0, x+4, y+0.5, 1, 1, 0 , c_white, 1);

draw_text_ext_transformed(x+40, y+6, global.stone_count, 10, -1, 0.4, 0.4, 0);

draw_sprite_ext(s_stone_icon, 0, x+43, y+0.5, 1, 1, 0 , c_white, 1);