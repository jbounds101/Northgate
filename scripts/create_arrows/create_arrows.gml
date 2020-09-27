///@arg objectCheck
///@arg createIfNextTo

if argument1 == true
{
	if instance_place(x+16, y, argument0)
	{
		right_arrow = instance_create_layer(x+15, y+4, "Instances", o_action_arrow);
		right_arrow.image_index = 0;
		right_arrow.creator = id;
	}
	if instance_place(x, y-16, argument0)
	{
		up_arrow = instance_create_layer(x+4, y-5, "Instances", o_action_arrow);
		up_arrow.image_index = 1;
		up_arrow.creator = id;
	}
	if instance_place(x-16, y, argument0)
	{
		left_arrow = instance_create_layer(x-5, y+4, "Instances", o_action_arrow);
		left_arrow.image_index = 2;
		left_arrow.creator = id;
	}
	if instance_place(x, y+16, argument0)
	{
		down_arrow = instance_create_layer(x+4, y+13, "Instances", o_action_arrow);
		down_arrow.image_index = 3;
		down_arrow.creator = id;
	}
}
else
{
	if not instance_place(x+16, y, argument0)
	{
		right_arrow = instance_create_layer(x+15, y+4, "Instances", o_action_arrow);
		right_arrow.image_index = 0;
		right_arrow.creator = id;
	}
	if not instance_place(x, y-16, argument0)
	{
		up_arrow = instance_create_layer(x+4, y-5, "Instances", o_action_arrow);
		up_arrow.image_index = 1;
		up_arrow.creator = id;
	}
	if not instance_place(x-16, y, argument0)
	{
		left_arrow = instance_create_layer(x-5, y+4, "Instances", o_action_arrow);
		left_arrow.image_index = 2;
		left_arrow.creator = id;
	}
	if not instance_place(x, y+16, argument0)
	{
		down_arrow = instance_create_layer(x+4, y+13, "Instances", o_action_arrow);
		down_arrow.image_index = 3;
		down_arrow.creator = id;
	}
}

