switch (global.upgrade_unit_selected) {
    case o_villager:
        start_x = 10;
		start_y = 73;
        break;
	case o_knight:
		start_x = 10+19;
		start_y = 73;
		break;
	case o_archer:
		start_x = 10+38;
		start_y = 73;
		break;
	case o_spearman:
		start_x = 10;
		start_y = 73+21;
		break;
	case o_horseman:
		start_x = 10+19;
		start_y = 73+21;
		break;
	case o_catapult:
		start_x = 10+38;
		start_y = 73+21;
		break;
    default:
        break;
}

end_x = start_x-200;



if op_upgrade_gui.upgrade_menu_active
{
	x = lerp(x, start_x, 0.2);
	y = lerp(y, start_y, 0.2);
}
else
{
	x = lerp(x, end_x, 0.2);
	y = lerp(y, start_y, 0.2);
}