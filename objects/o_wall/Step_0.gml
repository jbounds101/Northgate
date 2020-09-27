// Inherit the parent event
event_inherited();

if instance_place(x-16, y, o_wall)
{
	image_index = 2;
	if instance_place(x, y-16, o_wall)
	{
		image_index = 10;	
	}
}
if instance_place(x, y+16, o_wall)
{
	image_index = 3;
	if instance_place(x-16, y, o_wall)
	{
		image_index = 8;	
	}
}
if instance_place(x, y-16, o_wall)
{
	if not instance_place(x-16, y, o_wall)
	{
		image_index = 4;	
	}
	if instance_place(x, y+16, o_wall)
	{
		image_index = 6;	
		if instance_place(x-16, y, o_wall)
		{
			image_index = 13;	
		}
	}
}
if instance_place(x+16, y, o_wall)
{
	image_index = 1;	
	if instance_place(x, y+16, o_wall)
	{
		image_index = 7;
	}
	if instance_place(x-16, y, o_wall)
	{
		image_index = 5 
		if instance_place(x, y+16, o_wall)	
		{
			image_index = 14;	
		}
		if instance_place(x, y-16, o_wall)	
		{
			image_index = 15;	
		}
	}
	if instance_place(x, y-16, o_wall)
	{
		if not instance_place(x-16, y, o_wall)
		{
			image_index = 9
		}
		if instance_place(x, y+16, o_wall)	
		{
			image_index = 12;	
		}
	}
	
	if instance_place(x-16, y, o_wall)
	{
		if instance_place(x, y+16, o_wall)
		{
			if instance_place(x, y-16, o_wall)
			{
				image_index = 11
			}
		}
	}
}

if not instance_place(x+16, y, o_wall)
{
	if not instance_place(x-16, y, o_wall)
	{
		if not instance_place(x, y+16, o_wall)
		{
			if not instance_place(x, y-16, o_wall)
			{
				image_index = 0;
			}
		}
	}	
}

if hit_points <= 0
{
	instance_destroy();	
}

