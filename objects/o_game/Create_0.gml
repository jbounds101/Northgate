global.grid = mp_grid_create(0, 0, room_width div 16, room_height div 16, 16, 16);


global.one_second = game_get_speed(gamespeed_fps);

global.selected = noone;
global.action_selected = noone;
global.build_selected = 0;

global.enemy_turn = false;
global.enemy_counter = 0;

global.wood_count = 0;
global.stone_count = 0;

global.enemy_count = 0;

global.camera_adjust = false;

global.upgrade_unit_selected = 0;

previous_action_selected = noone;

alarm[0] = 2;