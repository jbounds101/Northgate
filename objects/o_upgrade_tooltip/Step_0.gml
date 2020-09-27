if global.upgrade_unit_selected == o_villager selected_upgrade_unit = o_upgrade_villager_icon;
if global.upgrade_unit_selected == o_knight selected_upgrade_unit = o_upgrade_knight_icon;
if global.upgrade_unit_selected == o_archer selected_upgrade_unit = o_upgrade_archer_icon;
if global.upgrade_unit_selected == o_spearman selected_upgrade_unit = o_upgrade_spearman_icon;
if global.upgrade_unit_selected == o_horseman selected_upgrade_unit = o_upgrade_horseman_icon;
if global.upgrade_unit_selected == o_catapult selected_upgrade_unit = o_upgrade_catapult_icon;

if global.selected != noone
{
	if (floor(global.selected.experience / 100) >= 1) 
	and global.selected.level == 1 
	and global.selected.object_index == o_villager
	and upgrade_menu_active == true
	{
		x = lerp(x, start_x, 0.2);	
	}
	else
	{
		x = lerp(x, end_x, 0.2);
	}
}
else
{
	x = lerp(x, end_x, 0.2);
}

if global.upgrade_unit_selected == o_villager
{
	down_shift = 20;	
	image_index = 0;
}
else
{
	down_shift = 0;	
	image_index = 1;
}