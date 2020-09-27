instance_destroy(shadow);
instance_destroy(house);

if global.selected == id
{
	global.selected = noone;	
}

mp_grid_clear_cell(global.grid, x/16, y/16);

if instance_exists(right_arrow) instance_destroy(right_arrow);
if instance_exists(up_arrow) instance_destroy(up_arrow);
if instance_exists(left_arrow) instance_destroy(left_arrow);
if instance_exists(down_arrow) instance_destroy(down_arrow);