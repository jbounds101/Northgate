start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 7;

wood_cost = 1;
stone_cost = 1;

action_point_cost = 1;

tt_title = "Road";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: Unbreakable" + 
"\nSpawns: Noone \nPlacement: Open adjecent tile";
tt_description = "A regular road, allows for player units to only use half MP when moving to / from a road tile. Removed if built on top of.";
