///@arg objectToCheck

if global.selected == noone exit;

var next_to_ = false;

if instance_position(global.selected.x+24, global.selected.y+8, argument0) next_to_ = true;

if instance_position(global.selected.x+8, global.selected.y-8, argument0) next_to_ = true;

if instance_position(global.selected.x-8, global.selected.y+8, argument0) next_to_ = true;

if instance_position(global.selected.x+8, global.selected.y+24, argument0) next_to_ = true;

return next_to_;