scale = view_wport[0] / camera_get_view_width(view_camera[0]);
camera = view_camera[0];
x_position = 0;
y_position = 0;

center_x = x_position + camera_get_view_width(camera)/2;
center_y = y_position + camera_get_view_height(camera)/2;

dragging = false;
drag_x = 0;
drag_y = 0;

current_zoom_scale = 1;

camera_adjust_x = camera_get_view_width(camera)/2;
camera_adjust_y = camera_get_view_height(camera)/2;

camera_target = noone;
camera_target_active = false;


display_set_gui_size(camera_get_view_width(camera), camera_get_view_height(camera)-2);