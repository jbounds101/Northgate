start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 6;

wood_cost = 0;
stone_cost = 2;

action_point_cost = 1;

hit_points = 100;

tt_title = "Stone Wall";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Noone \nPlacement: Open adjecent tile";
tt_description = "Build a stone wall to protect other structures. Enemies will be forced to destroy walls if their path is blocked.";
