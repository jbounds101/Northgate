///@arg direction(0-3)
creator.x_from = creator.grid_x;
creator.y_from = creator.grid_y;

if argument0 == 0
{
	creator.x_to = creator.grid_x + 1;
	creator.y_to = creator.grid_y;
}
if argument0 == 1
{
	creator.x_to = creator.grid_x;
	creator.y_to = creator.grid_y - 1;
}
if argument0 == 2
{
	creator.x_to = creator.grid_x - 1;
	creator.y_to = creator.grid_y;
}
if argument0 == 3
{
	creator.x_to = creator.grid_x;
	creator.y_to = creator.grid_y + 1;
}

creator.grid_x = creator.x_to;
creator.grid_y = creator.y_to;