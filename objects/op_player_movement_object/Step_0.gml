image_index = level-1;

grid_x = x div 16;
grid_y = y div 16;

if reset_stats and not global.enemy_turn
{
	// Resets directly after enemies' turn
	move_points = max_move_points;
	action_points = max_action_points;
	
	if defending
	{
		defending = false;
	}
	
	defense = base_defense;
	
	reset_stats = false;
}



if not global.enemy_turn
{
	
	if experience > 100 and level == 1 and object_index == o_villager
	{
		experience = 100;
	} 
	
	
	if experience >= 100 and not (object_index == o_villager and level == 1)
	{
		if level == 5
		{
			experience = 0;	
		}
		else
		{
			hit_points += hit_points_per_level[level-1];
			max_hit_points += hit_points_per_level[level-1];
			max_move_points += move_points_per_level[level-1];
			max_action_points += action_points_per_level[level-1];
			damage += damage_per_level[level-1];
			defense += defense_per_level[level-1];
			base_defense += defense_per_level[level-1];
		
			experience -= 100;
			level += 1;
		}
	}

	
	
	if arrows_created == false
	{
	
		arrows_created = true;
	
		// Movement arrows
		if move_points > 0 and global.action_selected == 0
		{
			create_arrows(op_impassable, false);
		}
	
			// Action arrows
		if action_points > 0 and global.action_selected != 0
		{
			switch (global.action_selected) 
			{
				case 1:
				    // Fight
					create_arrows(op_enemy, true);
					create_arrows(o_spawner, true);
				    break;
				case 2:
					// Defend
					if action_points >= max_action_points
					{
						create_arrow_center(s_shield);
					}
					break;
				case 3:
					// Build
					if able_to_build
					{
						create_build_arrows();
					}
					break;
				case 4:
					// Break Object
					if able_to_destroy
					{
						create_arrows(op_breakable_object, true);
					}
					break;
				case 5:
					// Read
					if ((action_points >= max_action_points)
					and (move_points >= max_move_points)
					and object_next_to(o_school))
					{
						create_arrow_center(s_book);
					}
					break;
				case 6:
					// Rest
					if ((action_points >= max_action_points)
					and (move_points >= max_move_points)
					and (hit_points != max_hit_points)
					and object_next_to(op_house))
					{
						create_arrow_center(s_campfire);
					}
					break;
				default:
				    // code here
				    break;
			}
		}
	}
}

if mouse_hovering and o_input.left_mouse_clicked and not op_upgrade_gui.upgrade_menu_active
{
	auto_selected = true;
	global.selected = id;
}
