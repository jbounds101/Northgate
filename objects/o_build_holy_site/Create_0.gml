start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 4;

wood_cost = 0;
stone_cost = 12;

action_point_cost = 3;

hit_points = 100;

tt_title = "Holy Site";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Noone \nPlacement: Open adjecent tile with at least one free space next to the desired structure";
tt_description = "Placeholder text blah blah.";
