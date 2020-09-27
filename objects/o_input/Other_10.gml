right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

left_mouse_clicked = mouse_check_button_pressed(mb_left);
left_mouse = mouse_check_button(mb_left);

right_mouse_clicked = mouse_check_button_pressed(mb_right);

middle_mouse_clicked = mouse_check_button_pressed(mb_middle);
middle_mouse = mouse_check_button(mb_middle);

one_pressed = keyboard_check_pressed(ord("1"));
two_pressed = keyboard_check_pressed(ord("2"));
three_pressed = keyboard_check_pressed(ord("3"));
four_pressed = keyboard_check_pressed(ord("4"));
five_pressed = keyboard_check_pressed(ord("5"));
six_pressed = keyboard_check_pressed(ord("6"));
seven_pressed = keyboard_check_pressed(ord("7"));

end_turn = keyboard_check_pressed(vk_enter);
