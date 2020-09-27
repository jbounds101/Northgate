start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 5;

wood_cost = 9;
stone_cost = 3;

action_point_cost = 3;

hit_points = 75;

tt_title = "Farm Hut";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Farmer \n(LVL 2) \nPlacement: Open adjecent tile with at least one free space next to the desired structure";
tt_description = "Spawns a farmer: same stats as villager although locked at 1 AP, receives double resources when gathering.";
