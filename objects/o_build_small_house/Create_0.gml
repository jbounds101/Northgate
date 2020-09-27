start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 0;

wood_cost = 5;
stone_cost = 5;

action_point_cost = 1;

hit_points = 75;

tt_title = "Small House";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Villager \n(0 XP) \nPlacement: Open adjecent tile with at least one free space next to the desired structure";
tt_description = "A basic home for a villager. Small houses have a relatively low HP, protecting them is important.";