start_x = x;
end_x = x+190;
x += 190;

image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_build_selected = noone;

build = 3;

wood_cost = 15;
stone_cost = 3;

action_point_cost = 3;

hit_points = 50;

tt_title = "Library";
tt_specifics = "Wood cost: " + string(wood_cost) + "\nStone Cost: " + string(stone_cost) + "\nAP Cost: " + 
string(action_point_cost) + "\nHP: " + string(hit_points) + 
"\nSpawns: Noone \nPlacement: Open adjecent tile";
tt_description = "A library, can be used by units to STUDY, increasing their XP. Very low HP makes the school important to protect.";