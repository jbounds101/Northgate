///@arg sprite_index

middle_arrow = instance_create_layer(x, y, "Instances", o_action_arrow);
middle_arrow.sprite_index = argument0;
middle_arrow.creator = id;
middle_arrow.image_alpha = 0;