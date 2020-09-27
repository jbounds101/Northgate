// Inherit the parent event
event_inherited();

if not instance_exists(unit) exit;

if unit.object_index == o_villager
{
	image_index = 0;	
}
else
{
	image_index = 1;	
}

