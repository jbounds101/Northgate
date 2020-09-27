if grid_added == false
{
	grid_added = true;
	mp_grid_add_instances(global.grid, id, false);	
}

if hit_points <= 0
{
	instance_destroy();	
}
