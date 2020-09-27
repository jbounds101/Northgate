if not instance_exists(op_player_movement_object) exit;

if not op_upgrade_gui.upgrade_menu_active
{
	if not global.enemy_turn
	{
		if position_meeting(mouse_gui_x, mouse_gui_y, id) or o_input.end_turn
		{
			if not o_input.end_turn
			{
				image_index = 1;
			}
			if o_input.left_mouse_clicked or o_input.end_turn
			{



				instance_destroy(o_action_arrow);
				op_player_movement_object.arrows_created = false;

				global.enemy_turn = true;
			
				op_player_movement_object.reset_stats = true;
				op_player_movement_object.auto_selected = false;

	
	
			}
		}
		else
		{
			image_index = 0;	
		}
	}
	else
	{
		image_index = 2;	
	}
}
else
{
	image_index = 2;
}