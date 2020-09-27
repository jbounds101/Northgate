///@arg string

if position_meeting(mouse_gui_x, mouse_gui_y, id) and not instance_exists(o_tooltip)
{
	var tooltip_ = instance_create_layer(x+sprite_width+5, y-40, "GUI", o_tooltip);
	tooltip_.depth -= 100;
	tooltip_.creator = id;
	tooltip_.tt_title = tt_title;
	tooltip_.tt_specifics = tt_specifics;
	tooltip_.tt_description = tt_description;
	tooltip_.tt_lore = tt_lore;
}

