start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 2;

wood_cost = 9;
stone_cost = 9;

action_point_cost = 3;

hit_points = 200;

tt_title = "Large House";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Villager \n(100 XP) \nPlacement: Open adjecent tile with at least one free space next to the desired structure";
tt_description = "A fortified large home, spawn villagers with 100 XP, letting them immediately convert or upgrade.";