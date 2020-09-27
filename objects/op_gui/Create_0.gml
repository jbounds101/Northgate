image_speed = 0;
impossible_action = false;
mouse_hovering = false;
previous_action_selected = noone;

action = 0;

// All of these options will return a dark icon if true
checking_move_points = false;
checking_action_points = false;

checking_max_action_points = false;

checking_for_object_next_to = false;
object_to_check = noone;

checking_for_surrounding = false;

tt_title = "MOVE";
tt_specifics = "TARGET: Clear space\n MP COST: 1\n AP COST: 0";
tt_description = "Move the selected unit to any adjecent spaces that are free of objects.";
tt_lore = "A powerful move, mastered only by few";