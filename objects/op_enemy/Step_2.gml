if global.enemy_turn == true
{	
	if global.enemy_counter == enemy_number
	{
		mp_grid_add_cell(global.grid, x/16, y/16);
		
		
		// Attack and destroy on last move point
		if attacking
		{
			var hit_target_ = noone;
				
			if check_surrounding_tiles(op_player_movement_object)
			{
				show_debug_message("HERE");
				var damage_to_unit_ = floor(damage - nearest_target.defense);
				if damage_to_unit_ < 1 damage_to_unit_ = 1;
				nearest_target.hit_points -= damage_to_unit_;
			}
			else if check_surrounding_tiles(op_building)
			{
				while hit_target_ == noone
				{
					hit_target_ = instance_nearest(x, y, op_building);					
				}
				
				hit_target_.hit_points -= object_damage;
				
			}
		}
	}
}