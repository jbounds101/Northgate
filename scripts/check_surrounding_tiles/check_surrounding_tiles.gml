///@arg objectToCheck

var next_to_ = false;

if instance_position(x+24, y+8, argument0) next_to_ = true;

if instance_position(x+8, y-8, argument0) next_to_ = true;

if instance_position(x-8, y+8, argument0) next_to_ = true;

if instance_position(x+8, y+24, argument0) next_to_ = true;

return next_to_;