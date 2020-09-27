start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 8;

wood_cost = 20;
stone_cost = 4;

action_point_cost = 4;

tt_title = "Bridge";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: Unbreakable" + 
"\nSpawns: Noone \nPlacement: Open adjecent water tile that is one tile wide";
tt_description = "A sturdy bridge, allows units to cross over water, cannot be broken.";