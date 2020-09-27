if global.build_selected == noone exit;

if global.wood_count >= o_build_indicator.build_elements[global.build_selected].wood_cost 
and global.stone_count >= o_build_indicator.build_elements[global.build_selected].stone_cost 
and action_points >= o_build_indicator.build_elements[global.build_selected].action_point_cost
{
	if global.build_selected == 0 or global.build_selected == 1 
	or global.build_selected == 2 or global.build_selected == 4
	or global.build_selected == 5
	{
	
		if not instance_place(x+16, y, op_impassable) and not instance_place(x+16, y, o_bridge)
		{
			// Starts at 1 because you can't use place meeting on the object calling it
			var right_arrow_impossible_locations_ = 1;
	
			if place_meeting(x+32, y, op_impassable) right_arrow_impossible_locations_ += 1;
			if place_meeting(x+16, y-16, op_impassable) right_arrow_impossible_locations_ += 1;
			if place_meeting(x+16, y+16, op_impassable) right_arrow_impossible_locations_ += 1;
			if place_meeting(x+32, y, o_bridge) right_arrow_impossible_locations_ += 1;
			if place_meeting(x+16, y-16, o_bridge) right_arrow_impossible_locations_ += 1;
			if place_meeting(x+16, y+16, o_bridge) right_arrow_impossible_locations_ += 1;
	
			if right_arrow_impossible_locations_ != 4
			{
				right_arrow = instance_create_layer(x+15, y+4, "Instances", o_action_arrow);
				right_arrow.image_index = 0;
				right_arrow.creator = id;
				right_arrow.sprite_index = s_build_arrow;
			}
		}


		if not instance_place(x, y-16, op_impassable) and not instance_place(x, y-16, o_bridge)
		{
			var up_arrow_impossible_locations_ = 1;
	
			if place_meeting(x+16, y-16, op_impassable) up_arrow_impossible_locations_ += 1;
			if place_meeting(x, y-32, op_impassable) up_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y-16, op_impassable) up_arrow_impossible_locations_ += 1;
			if place_meeting(x+16, y-16, o_bridge) up_arrow_impossible_locations_ += 1;
			if place_meeting(x, y-32, o_bridge) up_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y-16, o_bridge) up_arrow_impossible_locations_ += 1;
	
			if up_arrow_impossible_locations_ != 4
			{
				up_arrow = instance_create_layer(x+4, y-5, "Instances", o_action_arrow);
				up_arrow.image_index = 1;
				up_arrow.creator = id;
				up_arrow.sprite_index = s_build_arrow;
			}
		}

		if not instance_place(x-16, y, op_impassable) and not instance_place(x-16, y, o_bridge)
		{
			var left_arrow_impossible_locations_ = 1;
	
			if place_meeting(x-16, y-16, op_impassable) left_arrow_impossible_locations_ += 1;
			if place_meeting(x-32, y, op_impassable) left_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y+16, op_impassable) left_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y-16, o_bridge) left_arrow_impossible_locations_ += 1;
			if place_meeting(x-32, y, o_bridge) left_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y+16, o_bridge) left_arrow_impossible_locations_ += 1;
	
			if left_arrow_impossible_locations_ != 4
			{
				left_arrow = instance_create_layer(x-5, y+4, "Instances", o_action_arrow);
				left_arrow.image_index = 2;
				left_arrow.creator = id;
				left_arrow.sprite_index = s_build_arrow;
			}
		}


		if not instance_place(x, y+16, op_impassable) and not instance_place(x, y+16, o_bridge)
		{
			var down_arrow_impossible_locations_ = 1;
	
			if place_meeting(x+16, y+16, op_impassable) down_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y+16, op_impassable) down_arrow_impossible_locations_ += 1;
			if place_meeting(x, y+32, op_impassable) down_arrow_impossible_locations_ += 1;
			if place_meeting(x+16, y+16, o_bridge) down_arrow_impossible_locations_ += 1;
			if place_meeting(x-16, y+16, o_bridge) down_arrow_impossible_locations_ += 1;
			if place_meeting(x, y+32, o_bridge) down_arrow_impossible_locations_ += 1;
	
			if down_arrow_impossible_locations_ != 4
			{
				down_arrow = instance_create_layer(x+4, y+13, "Instances", o_action_arrow);
				down_arrow.image_index = 3;
				down_arrow.creator = id;
				down_arrow.sprite_index = s_build_arrow;
			}
		}
	}
	if global.build_selected == 3
	or global.build_selected == 6 or global.build_selected == 7
	{
		if not instance_place(x+16, y, op_impassable) and not instance_place(x+16, y, o_bridge)
		{
			right_arrow = instance_create_layer(x+15, y+4, "Instances", o_action_arrow);
			right_arrow.image_index = 0;
			right_arrow.creator = id;
			right_arrow.sprite_index = s_build_arrow;
		}
		if not instance_place(x, y-16, op_impassable) and not instance_place(x, y-16, o_bridge) 
		{
			up_arrow = instance_create_layer(x+4, y-5, "Instances", o_action_arrow);
			up_arrow.image_index = 1;
			up_arrow.creator = id;
			up_arrow.sprite_index = s_build_arrow;
		}
		if not instance_place(x-16, y, op_impassable) and not instance_place(x-16, y, o_bridge)
		{
			left_arrow = instance_create_layer(x-5, y+4, "Instances", o_action_arrow);
			left_arrow.image_index = 2;
			left_arrow.creator = id;
			left_arrow.sprite_index = s_build_arrow;
		}
		if not instance_place(x, y+16, op_impassable) and not instance_place(x, y+16, o_bridge)
		{
			down_arrow = instance_create_layer(x+4, y+13, "Instances", o_action_arrow);
			down_arrow.image_index = 3;
			down_arrow.creator = id;
			down_arrow.sprite_index = s_build_arrow;
		}
	}
	if global.build_selected == 8
	{
		var map_id_ = layer_tilemap_get_id(layer_get_id("Water"));
		var data_ = tilemap_get_at_pixel(map_id_, x+16, y) & tile_index_mask;
		if data_ != 0 
		{
			// There is a tile
			data_ = tilemap_get_at_pixel(map_id_, x+32, y) & tile_index_mask;
			if data_ == 0
			{
				if not instance_place(x+16, y, o_bridge)
				{
					right_arrow = instance_create_layer(x+15, y+4, "Instances", o_action_arrow);
					right_arrow.image_index = 0;
					right_arrow.creator = id;
					right_arrow.sprite_index = s_build_arrow;
				}
			}
		}
		data_ = tilemap_get_at_pixel(map_id_, x, y-16) & tile_index_mask;
		if data_ != 0 
		{
			// There is a tile
			data_ = tilemap_get_at_pixel(map_id_, x, y-32) & tile_index_mask;
			if data_ == 0
			{	
				if not instance_place(x, y-16, o_bridge)
				{
				up_arrow = instance_create_layer(x+4, y-5, "Instances", o_action_arrow);
				up_arrow.image_index = 1;
				up_arrow.creator = id;
				up_arrow.sprite_index = s_build_arrow;
				}
			}
	
		}
		data_ = tilemap_get_at_pixel(map_id_, x-16, y) & tile_index_mask;
		if data_ != 0 
		{
			// There is a tile
			data_ = tilemap_get_at_pixel(map_id_, x-32, y) & tile_index_mask;
			if data_ == 0
			{
				if not instance_place(x-16, y, o_bridge)
				{
					left_arrow = instance_create_layer(x-5, y+4, "Instances", o_action_arrow);
					left_arrow.image_index = 2;
					left_arrow.creator = id;
					left_arrow.sprite_index = s_build_arrow;
				}
			}
	
		}
		data_ = tilemap_get_at_pixel(map_id_, x, y+16) & tile_index_mask;
		if data_ != 0 
		{
			// There is a tile
			data_ = tilemap_get_at_pixel(map_id_, x, y+32) & tile_index_mask;
			if data_ == 0
			{
				if not instance_place(x, y+16, o_bridge)
				{
					down_arrow = instance_create_layer(x+4, y+13, "Instances", o_action_arrow);
					down_arrow.image_index = 3;
					down_arrow.creator = id;
					down_arrow.sprite_index = s_build_arrow;
				}
			}
	
		}
	}
}