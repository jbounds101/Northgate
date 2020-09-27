if not instance_exists(creator) exit;

if depth_change == false
{
	depth_change = true;
	depth = creator.depth-1;
}

if global.action_selected == 3
{
	sprite_index = s_build_arrow;	
}

if sprite_index == s_action_arrow or sprite_index == s_build_arrow
{
	var mouse_direction_ = point_direction(creator.x, creator.y+8, mouse_x, mouse_y);
	mouse_facing = 0;

	if mouse_direction_ >= 315 and mouse_direction_ < 45
	{
		mouse_facing = 0;	
	}
	if mouse_direction_ >= 45 and mouse_direction_ < 135
	{
		mouse_facing = 1;	
	}
	if mouse_direction_ >= 135 and mouse_direction_ < 225
	{
		mouse_facing = 2;	
	}
	if mouse_direction_ >= 225 and mouse_direction_ < 315
	{
		mouse_facing = 3;	
	}

	if (mouse_facing == image_index) and (creator.id == global.selected)
	{
		image_blend = c_white;	
	}
	else
	{
		image_blend = c_gray;	
	}
	
	if creator.id != global.selected
	{
		image_alpha = 0.4;	
	}
	else
	{
		image_alpha = 1;	
	}	
	
}
else
{
	// Sprite is not default
	
	var mouse_distance_ = point_distance(creator.x, creator.y, mouse_x, mouse_y);
	if creator.id != global.selected
	{
		image_alpha = 0;	
	}
	else if mouse_distance_ <= 30
	{
		image_alpha = 1;	
		image_blend = c_white;
	}	
	else if mouse_distance_ > 30
	{
		image_alpha = 0.7;	
		image_blend = c_gray;
	}
	
}



if (image_blend == c_white) and (o_input.right_mouse_clicked) and (image_alpha == 1) and (op_upgrade_gui.upgrade_menu_active == false)
{
	switch(global.action_selected) 
	{
		case 0:
			// Movement arrows
			
			if instance_place(x, y, o_road)
			{
				creator.move_points -= 0.5;
			}
			else
			{
				creator.move_points -= 1;
			}
			
			mp_grid_clear_cell(global.grid, creator.x/16, creator.y/16);
			
			move_direction_arrow(image_index);
			creator.x = creator.x_to * 16;
			creator.y = creator.y_to * 16;
			
			mp_grid_add_cell(global.grid, creator.x/16, creator.y/16);
			
			if instance_exists(creator.right_arrow) instance_destroy(creator.right_arrow, false);
			if instance_exists(creator.up_arrow) instance_destroy(creator.up_arrow, false);
			if instance_exists(creator.left_arrow) instance_destroy(creator.left_arrow, false);
			if instance_exists(creator.down_arrow) instance_destroy(creator.down_arrow, false);
			
			if creator.move_points < 0
			{
				creator.move_points = 0;	
			}
			
			instance_destroy(o_action_arrow);
			op_player_movement_object.arrows_created = false;	
			
			break;
		case 1:
			// Attack arrows
			
			creator.action_points -= 1;
			var enemy_object_ = check_position_relative(op_enemy);
			var damage_to_enemy_ = floor(creator.damage*creator.enemy_damage_multipler - enemy_object_.defense);
			if (damage_to_enemy_ < 1) damage_to_enemy_ = 1;
			enemy_object_.hit_points -= damage_to_enemy_;
			if (enemy_object_.hit_points <= 0)
			{
				enemy_object_.hit_points = 0;
				creator.experience += enemy_object_.experience_drop;
				instance_destroy(enemy_object_);
				//instance_destroy(id, false);
				instance_destroy(o_action_arrow);
				op_player_movement_object.arrows_created = false;
				
			}
			
			break;
		case 2:
			// Defend icon
			
			creator.defending = true;
			creator.action_points = 0;
			if creator.defense == 0 or creator.defense == 1
			{
				creator.defense += 1;	
			}
			else
			{
				creator.defense = floor(creator.defense + creator.defense/2);
			}
			instance_destroy(id, false);
			
			
			break;
		case 3:
			// Build objects
			
			var build_location_x_ = 0
			var build_location_y_ = 0;
			
			if image_index == 0
			{
				build_location_x_ = global.selected.x+16;
				build_location_y_ = global.selected.y;
			}
			if image_index == 1
			{
				build_location_x_ = global.selected.x;
				build_location_y_ = global.selected.y-16;
			}
			if image_index == 2
			{
				build_location_x_ = global.selected.x-16;
				build_location_y_ = global.selected.y;
			}
			if image_index == 3
			{
				build_location_x_ = global.selected.x;
				build_location_y_ = global.selected.y+16;
			}
			
			if global.build_selected == 0 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_small_house);
			if global.build_selected == 1 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_medium_house);
			if global.build_selected == 2 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_large_house);
			if global.build_selected == 3 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_school);
			if global.build_selected == 4 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_holy_site);
			if global.build_selected == 5 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_farm_hut);
			if global.build_selected == 6 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_wall);
			if global.build_selected == 7 instance_create_layer(build_location_x_, build_location_y_, "Instances", o_road);
			if global.build_selected == 8 
			{
				var bridge_ = instance_create_layer(build_location_x_, build_location_y_, "Instances", o_bridge);
				if image_index == 0 or image_index == 2
				{
					bridge_.image_index = 0;
					instance_create_layer(build_location_x_, build_location_y_, "Instances", o_bridge_rail);
				}
				else
				{
					bridge_.image_index = 1;	
				}
			}

			//instance_destroy(id, false);
			instance_destroy(o_action_arrow);
			op_player_movement_object.arrows_created = false;
			
			break;
		case 4:
			// Break object arrows
			
			creator.action_points -= 1;
			var breakable_object_ = check_position_relative(op_breakable_object);
			breakable_object_.hit_points -= creator.object_damage;
			if (breakable_object_.hit_points <= 0)  
			{
				//instance_destroy(id, false);
				instance_destroy(o_action_arrow);
				op_player_movement_object.arrows_created = false;	
			}	
			
			if creator.action_points <= 0
			{
				if instance_exists(creator.right_arrow) instance_destroy(creator.right_arrow, false);
				if instance_exists(creator.up_arrow) instance_destroy(creator.up_arrow, false);
				if instance_exists(creator.left_arrow) instance_destroy(creator.left_arrow, false);
				if instance_exists(creator.down_arrow) instance_destroy(creator.down_arrow, false);	
			}
			
			break;
		case 5:
			// Read icon
			
			creator.move_points = 0;
			creator.action_points = 0;
			creator.experience += (irandom_range(15, 20) - creator.level) + 1;
			instance_destroy(id, false);
			break;
		case 6:
			// Rest icon
			
			creator.move_points = 0;
			creator.action_points = 0;
			creator.hit_points += floor(creator.max_hit_points / 4)
			if creator.hit_points > creator.max_hit_points
			{
				creator.hit_points = creator.max_hit_points;	
			}
			
			instance_destroy(id, false);
			break;
		default:
			break;
	}
	
}

