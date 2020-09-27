enemy = instance_create_layer(mouse_x div 16 * 16, mouse_y div 16 * 16, "Instances", op_enemy);
global.enemy_count += 1;
enemy.enemy_number = global.enemy_count;
