// Change these
name = "Catapult";

hit_points = 10;
move_points = 1;
action_points = 1;

damage = 14;
enemy_damage_multipler = 0.2;
enemy_structure_damage_multiplier = 2.5;

defense = 1;

object_damage = 10;
able_to_build = false;
able_to_destroy = false;


// The array values would start at the values from level 1 to 2 and up from there
hit_points_per_level = array(2, 2, 2, 2);
move_points_per_level = array(0, 1, 0, 0);
action_points_per_level = array(0, 0, 0, 0);
damage_per_level = array(1, 1, 1, 1);
defense_per_level = array(0, 0, 1, 0);

//

arrows_created = false;
depth = -100;
image_speed = 0;
mouse_hovering = false;

shadow = instance_create_layer(x, y, "Instances", o_shadow);
shadow.creator = id;

left_arrow = noone;
up_arrow = noone;
right_arrow = noone;
down_arrow = noone;
middle_arrow = noone;

max_hit_points = hit_points;
max_move_points = move_points;
max_action_points = action_points;

base_defense = defense;
defending = false;

experience = 0;
level = 1;
available_levels = 0;

grid_x = x div 16;
grid_y = y div 16;

x_from = grid_x;
y_from = grid_y;

x_to = grid_x;
y_to = grid_y;

house = noone;

auto_selected = false;

reset_stats = false;