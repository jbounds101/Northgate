if global.enemy_turn == true
{	
	if global.enemy_counter == enemy_number
	{
		attacking = false;
		
		mp_grid_clear_cell(global.grid, x/16, y/16);
		nearest_target = noone;
		target_counter_ = 0;
	
		if not retreating
		{
			while nearest_target == noone
			{
				if instance_nearest(x+8, y+8, targets[target_counter_]) != noone
				{
					nearest_target = instance_nearest(x+8, y+8, targets[target_counter_])
				}
				target_counter_ += 1;
			}
		}
		
			
		// No direct path and not next to target
		path_x = nearest_target.x+8;
		path_y = nearest_target.y+8;
					
		var min_distance_path_x_ = 9999999;
		var min_distance_path_y_ = 9999999;
					
		var loops_ = 3;
		var displacement_ = 1;
					
		var checking_x_ = 0;
		var checking_y_ = 0;
		
		var path_previous_length_ = 9999999;
					
		while mp_grid_path(global.grid, path, x+8, y+8, path_x, path_y, false) == false
		{
				
			for(var i = 0; i < loops_; i++)
			{
				// Loop for horizontals
				checking_x_ = (nearest_target.x - 16 * displacement_) + (i*16);
							
				for(var j = 0; j < loops_; j++)
				{
					// Loop for verticals
					checking_y_ = (nearest_target.y - 16 * displacement_) + (j*16);
					
					
								
					if mp_grid_path(global.grid, path, x+8, y+8, checking_x_+8, checking_y_+8, false)
					{
						// Possible to path to this location
						
						
						mp_grid_path(global.grid, path, x+8, y+8, checking_x_, checking_y_, false);
						
						var path_length_ = path_get_length(path) div 16;
						if (i == 0 or i == loops_-1) and (j == 0 or j == loops_-1)
						{
							path_length_ += loops_*2;	
						}
						
						
						if path_length_ < path_previous_length_
						{
							min_distance_path_x_ = checking_x_;
							min_distance_path_y_ = checking_y_;
							
							path_previous_length_ = path_length_;
						}												
					}
				}
			}
			path_x = min_distance_path_x_+8;
			path_y = min_distance_path_y_+8;
			loops_ += 2;
			displacement_ += 1;
						
						
		}
		// Found path
		mp_grid_path(global.grid, path, x+8, y+8, path_x, path_y, false);
		
		
		
		// Movement
		
		
		path_positions = path_get_length(path)/16;
		path_start(path, 0, path_action_stop, false);
			
		for(var k = 0; k < move_points; k++)
		{
			if not check_surrounding_tiles(op_player_movement_object)
			{
			
				path_position = move_points/path_positions;	
			}
			
			if k == move_points-1
			{
				attacking = true;
			}
		}		
	}
}


