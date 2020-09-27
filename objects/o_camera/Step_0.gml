var horizontal_movement_ = o_input.right - o_input.left;
var vertical_movement_ = o_input.down - o_input.up;

var view_width_ = camera_get_view_width(camera);
var view_height_ = camera_get_view_height(camera);

var speed_ = o_settings.camera_speed * current_zoom_scale;

center_x = x_position + view_width_/2;
center_y = y_position + view_height_/2;

var direction_ = point_direction(0, 0, horizontal_movement_, vertical_movement_);
var mouse_direction_ = point_direction(center_x, center_y, mouse_x, mouse_y);

if ((horizontal_movement_ != 0) or (vertical_movement_ != 0))
{
	x_position = lerp(x_position, x_position + (lengthdir_x(speed_, direction_)), 0.5);
	x_position = round_n(x_position, 1/scale);

	y_position = lerp(y_position, y_position + (lengthdir_y(speed_, direction_)), 0.5);
	y_position = round_n(y_position, 1/scale);

	
}

if o_settings.edge_panning
{
	if ((mouse_x > center_x + view_width_/2-10) or
	   (mouse_x < center_x - view_width_/2+10) or
	   (mouse_y > center_y + view_height_/2-10) or
	   (mouse_y < center_y - view_height_/2+10))
	{
		x_position = lerp(x_position, x_position + (lengthdir_x(speed_, mouse_direction_)), 0.5);
		y_position = lerp(y_position, y_position + (lengthdir_y(speed_, mouse_direction_)), 0.5);
	}
}


// Middle mouse panning

if o_input.middle_mouse_clicked
{
	dragging = true;
	drag_x = mouse_x;
	drag_y = mouse_y;	
}

if o_input.middle_mouse
{
	var x_drag_ = camera_get_view_x(camera) + drag_x - mouse_x;
	var y_drag_ = camera_get_view_y(camera) + drag_y - mouse_y;	
	
	x_position = lerp(x_position, x_drag_, 0.5);
	x_position = round_n(x_position, 1/scale);
	y_position = lerp(y_position, y_drag_, 0.5);
	y_position = round_n(y_position, 1/scale);
}



// Mouse wheel zooming

var mouse_wheel_ = mouse_wheel_up() - mouse_wheel_down();

if mouse_wheel_ != 0
{
	if mouse_wheel_ == -1 and current_zoom_scale < 4
	{
		
		var mouse_x_ = (mouse_x-x_position)/view_width_;
		var mouse_y_ = (mouse_y-y_position)/view_height_;
		
		
		camera_set_view_size(camera, view_width_*2, view_height_*2)
		
		view_width_ = camera_get_view_width(camera);
		view_height_ = camera_get_view_height(camera);
			
		x_position =
		mouse_x - view_width_ * mouse_x_ - view_width_ / 2 * mouse_x_;
		y_position = mouse_y - view_height_ * mouse_y_ - view_height_ / 2 * mouse_y_;
		
		current_zoom_scale *= 2;
		
	}
	if mouse_wheel_ == 1 and current_zoom_scale > 1
	{
		camera_set_view_size(camera, view_width_/2, view_height_/2)
		x_position += view_width_/2/2;
		y_position += view_height_/2/2;
		
		x_position += (mouse_x-x_position);
		y_position += (mouse_y-y_position);
		
		current_zoom_scale /= 2;
		
	}	
	
}

//x_position = clamp(x_position, 0, room_width-camera_get_view_width(camera));

if global.camera_adjust == true and not op_upgrade_gui.upgrade_menu_active
{
	
	if instance_exists(op_player_movement_object)
	{	
		if camera_target_active == false
		{
			var distance_check_ = 999999;
			var min_distance_ = 999999;
		
			for(var i = 0; i < instance_number(op_player_movement_object); i++)
			{
				var object_check_ = instance_find(op_player_movement_object, i);
			
				if object_check_.auto_selected == false
				{
					distance_check_ = point_distance(center_x, center_y, object_check_.x+8, object_check_.y+8);	
					if distance_check_ < min_distance_
					{
						min_distance_ = distance_check_;
						camera_target = object_check_;
					}
				}
				
			}
			
			if camera_target != noone
			{
				camera_target_active = true;
				camera_target.auto_selected = true;
				global.selected = camera_target;
			}
			else
			{
				global.camera_adjust = false;
				camera_target_active = true;
			}
		}
		else
		{
			if camera_target != noone
			{
				x_position = lerp(x_position, camera_target.x+8 - camera_adjust_x * current_zoom_scale , 0.2);
				y_position = lerp(y_position, camera_target.y+8 - camera_adjust_y * current_zoom_scale , 0.2);
		
				if round(x_position) == round(camera_target.x+8 - camera_adjust_x * current_zoom_scale)
				and round(y_position) == round(camera_target.y+8 - camera_adjust_y * current_zoom_scale)
				{
					global.camera_adjust = false;
				}
		
		
				// Stop auto camera if movement is happening
				if ((mouse_x > center_x + view_width_/2-10) or
				(mouse_x < center_x - view_width_/2+10) or
				(mouse_y > center_y + view_height_/2-10) or
				(mouse_y < center_y - view_height_/2+10))
				{
					global.camera_adjust = false;  
				}
				if ((horizontal_movement_ != 0) or (vertical_movement_ != 0))
				{
					global.camera_adjust = false
				}	
				if o_input.middle_mouse or o_input.middle_mouse_clicked
				{
					global.camera_adjust = false
				}
			}
		}
	}
}






camera_set_view_pos(camera, x_position, y_position);

audio_listener_position(x_position+view_width_/2, y_position+view_height_/2, 0);