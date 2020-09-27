switch (global.build_selected) {
    case 0:
        start_x = 250;
		start_y = 38;
        break;
	case 1:
		start_x = 250+18;
		start_y = 38;
		break;
	case 2:
		start_x = 250+36;
		start_y = 38;
		break;
	case 3:
		start_x = 250;
		start_y = 38+30;
		break;
	case 4:
		start_x = 250+18;
		start_y = 38+30;
		break;
	case 5:
		start_x = 250+36;
		start_y = 38+30;
		break
	case 6:
		start_x = 250;
		start_y = 38+60;
		break;
	case 7:
		start_x = 250+18;
		start_y = 38+60;
		break;
	case 8:
		start_x = 250+36;
		start_y = 38+60;
		break;
    default:
        break;
}

end_x = start_x+190;






if global.action_selected == 3
{
	x = lerp(x, start_x, 0.2);
	y = lerp(y, start_y, 0.2);
}
else
{
	x = lerp(x, end_x, 0.2);
	y = lerp(y, start_y, 0.2);
}





if global.action_selected == 3
{
	if global.build_selected != noone
	{
		
		image_alpha = 1;
	
		if global.selected != noone
		{
			if build_elements[global.build_selected].impossible_action == true
			{
				image_index = 1;
			}
			else
			{
				image_index = 0;	
			}
		}
		else
		{
			image_index = 1;	
		}
	}
	else
	{
		image_alpha = 0;	
	}
}
else
{
	image_alpha = 0;	
}