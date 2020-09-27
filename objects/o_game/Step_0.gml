window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))


var hovering_on_an_object_ = false;
with(op_player_movement_object)
{	
	if mouse_hovering == true
	{
		hovering_on_an_object_ = true;	
	}
}

var hovering_on_gui_ = false;

with(op_gui)
{	
	if mouse_hovering == true
	{
		hovering_on_gui_ = true;
	}
}

// Select nothing if clicking ground
if o_input.left_mouse_clicked
{
	if not hovering_on_gui_
	{
		if not hovering_on_an_object_
		{
			global.selected = noone;
			
		}
	}
}


if (o_input.one_pressed or o_input.two_pressed or o_input.three_pressed or o_input.four_pressed 
or o_input.five_pressed or o_input.six_pressed or o_input.seven_pressed)
{
	instance_destroy(o_action_arrow);
	op_player_movement_object.arrows_created = false;
	
	if o_input.one_pressed global.action_selected = 0;
	if o_input.two_pressed global.action_selected = 1;
	if o_input.three_pressed global.action_selected = 2;
	if o_input.four_pressed global.action_selected = 3;
	if o_input.five_pressed global.action_selected = 4;
	if o_input.six_pressed global.action_selected = 5;
	if o_input.seven_pressed global.action_selected = 6;
	
	if global.action_selected == previous_action_selected
	{
		global.action_selected = noone;
		instance_destroy(o_action_arrow, false);
		op_player_movement_object.arrows_created = false;	
	}

}