if global.selected != noone
{
	if (floor(global.selected.experience / 100) >= 1) 
	and global.selected.level == 1 
	and global.selected.object_index == o_villager
	and upgrade_menu_active == true
	{
		x = lerp(x, start_x, 0.2);	
		if position_meeting(mouse_gui_x, mouse_gui_y, id) 
		{
			mouse_hovering = true;
			image_index = 1;
			
			if o_input.left_mouse_clicked
			{
				// Insert active code here
				
				if global.upgrade_unit_selected != o_villager
				{
					var save_house_ = global.selected.house;
					var new_unit_ = instance_create_layer(global.selected.x, global.selected.y, "Instances", global.upgrade_unit_selected);	
					save_house_.unit = new_unit_;
					new_unit_.house = save_house_;
					new_unit_.move_points = 0;
					new_unit_.action_points = 0;
					instance_destroy(global.selected.shadow);
					instance_destroy(global.selected, false);
					global.selected = new_unit_;
					
				}
				else
				{
					// Leveling villager
					global.selected.level += 1;
					global.selected.experience = 0;
					global.selected.move_points = 0;
					global.selected.action_points = 0;
					
					global.selected.hit_points += 5;
					global.selected.max_hit_points += 5;
					global.selected.max_move_points += 1;
					global.selected.max_action_points += 1;
					global.selected.base_defense += 1;
					global.selected.defense += 1;
					global.selected.object_damage += 10;
					
				}
				op_upgrade_gui.upgrade_menu_active = false;
				op_gui.mouse_hovering = false;
			
			}
		}
		else
		{
			mouse_hovering = false;
			image_index = 0;
		}
	}
	else
	{
		x = lerp(x, end_x, 0.2);
	}
}
else
{
	x = lerp(x, end_x, 0.2);
}