impossible_action = true;

var possible_actions_ = 0;

with(global.selected)
{
	if not instance_place(x+16, y, op_impassable)
	{
		possible_actions_ += 1;
	}

	if not instance_place(x, y-16, op_impassable)
	{
		possible_actions_ += 1;
	}

	if not instance_place(x-16, y, op_impassable)
	{
		possible_actions_ += 1;
	}

	if not instance_place(x, y+16, op_impassable)
	{
		possible_actions_ += 1;
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
