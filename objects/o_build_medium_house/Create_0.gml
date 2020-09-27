start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 1;

wood_cost = 7;
stone_cost = 7;

action_point_cost = 2;

hit_points = 100;

tt_title = "Medium House";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Villager \n(60 XP) \nPlacement: Open adjecent tile with at least one free space next to the desired structure";
tt_description = "A slightly larger home for a villager. Spawns villager with 60 XP. Average HP, although protecting them is important.";