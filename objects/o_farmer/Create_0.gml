// Change these
name = "Farmer";

hit_points = 15;
move_points = 2;
action_points = 1;

damage = 1;
enemy_damage_multipler = 1;
enemy_structure_damage_multiplier = 1;

defense = 0;

object_damage = 25;
able_to_build = true;
able_to_destroy = true;


// The array values would start at the values from level 1 to 2 and up from there
hit_points_per_level = array(0, 2, 4, 4);
move_points_per_level = array(0, 1, 1, 2);
action_points_per_level = array(0, 0, 0, 0);
damage_per_level = array(0, 0, 0, 0);
defense_per_level = array(0, 0, 0, 0);

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

hit_points += 5;
max_hit_points += 5;
max_move_points += 1;
base_defense += 1;
defense += 1;
object_damage += 10;