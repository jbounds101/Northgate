var _x = -16;
while _x < room_width
{
	instance_create_layer(_x+16, 0, "Grass", o_grass);
	_x += 16;
	for (var _y = 0; _y<room_height; _y+=16)
	{
		instance_create_layer(_x, _y+16, "Grass", o_grass);
	}
}