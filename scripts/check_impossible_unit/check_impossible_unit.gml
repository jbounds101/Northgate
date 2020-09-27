impossible_action = true;

var possible_actions_ = 0;

with(global.selected)
{
	if not instance_place(x+16, y, op_impassable)
	{
		// Starts at 1 because you can't use place meeting on the object calling it
		var right_arrow_impossible_locations_ = 1;
	
		if place_meeting(x+32, y, op_impassable) right_arrow_impossible_locations_ += 1;
		if place_meeting(x+16, y-16, op_impassable) right_arrow_impossible_locations_ += 1;
		if place_meeting(x+16, y+16, op_impassable) right_arrow_impossible_locations_ += 1;
	
		if right_arrow_impossible_locations_ != 4
		{
			possible_actions_ += 1;
		}
	}

	if not instance_place(x, y-16, op_impassable)
	{
		var up_arrow_impossible_locations_ = 1;
	
		if place_meeting(x+16, y-16, op_impassable) up_arrow_impossible_locations_ += 1;
		if place_meeting(x, y-32, op_impassable) up_arrow_impossible_locations_ += 1;
		if place_meeting(x-16, y-16, op_impassable) up_arrow_impossible_locations_ += 1;
	
		if up_arrow_impossible_locations_ != 4
		{
			possible_actions_ += 1;
		}
	}

	if not instance_place(x-16, y, op_impassable)
	{
		var left_arrow_impossible_locations_ = 1;
	
		if place_meeting(x-16, y-16, op_impassable) left_arrow_impossible_locations_ += 1;
		if place_meeting(x-32, y, op_impassable) left_arrow_impossible_locations_ += 1;
		if place_meeting(x-16, y+16, op_impassable) left_arrow_impossible_locations_ += 1;
	
		if left_arrow_impossible_locations_ != 4
		{
			possible_actions_ += 1;
		}
	}

	if not instance_place(x, y+16, op_impassable)
	{
		var down_arrow_impossible_locations_ = 1;
	
		if place_meeting(x+16, y+16, op_impassable) down_arrow_impossible_locations_ += 1;
		if place_meeting(x-16, y+16, op_impassable) down_arrow_impossible_locations_ += 1;
		if place_meeting(x, y+32, op_impassable) down_arrow_impossible_locations_ += 1;
	
		if down_arrow_impossible_locations_ != 4
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
