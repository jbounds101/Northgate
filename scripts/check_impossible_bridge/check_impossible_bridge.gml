impossible_action = true;

var possible_actions_ = 0;

with(global.selected)
{
	var map_id_ = layer_tilemap_get_id(layer_get_id("Water"));
	var data_ = tilemap_get_at_pixel(map_id_, x+16, y) & tile_index_mask;
	if data_ != 0 
	{
		// There is a tile
		data_ = tilemap_get_at_pixel(map_id_, x+32, y) & tile_index_mask;
		if data_ == 0
		{
			possible_actions_ += 1;
		}
	}
	data_ = tilemap_get_at_pixel(map_id_, x, y-16) & tile_index_mask;
	if data_ != 0 
	{
		// There is a tile
		data_ = tilemap_get_at_pixel(map_id_, x, y-32) & tile_index_mask;
		if data_ == 0
		{
			possible_actions_ += 1;
		}
	
	}
	data_ = tilemap_get_at_pixel(map_id_, x-16, y) & tile_index_mask;
	if data_ != 0 
	{
		// There is a tile
		data_ = tilemap_get_at_pixel(map_id_, x-32, y) & tile_index_mask;
		if data_ == 0
		{
			possible_actions_ += 1;
		}
	
	}
	data_ = tilemap_get_at_pixel(map_id_, x, y+16) & tile_index_mask;
	if data_ != 0 
	{
		// There is a tile
		data_ = tilemap_get_at_pixel(map_id_, x, y+32) & tile_index_mask;
		if data_ == 0
		{
			possible_actions_ += 1;
		}
	}
}


if possible_actions_ > 0
{
	impossible_action = false;	
}

if global.wood_count < wood_cost 
or global.stone_count < stone_cost 
or global.selected.action_points < action_point_cost
or global.selected.able_to_build == false
{
	impossible_action = true	
}
