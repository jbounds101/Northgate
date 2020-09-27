previous_action_selected = global.action_selected;

if global.enemy_turn == true
{
	if global.enemy_counter == global.enemy_count
	{
		global.enemy_turn = false;
	}
	else
	{
		global.enemy_counter += 1;
	}
}
else
{
	global.enemy_counter = 0;	
}