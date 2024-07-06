if keyboard_check(vk_down)
{
	x = 71;
	y = 160;
}

else if keyboard_check(vk_up)
{
	x = 56;
	y = 138;
}

else if (keyboard_check_pressed(vk_enter) && y=138)
{
	room_goto_next();
}

else if (keyboard_check_pressed(vk_enter) && y=160)
{
	room_goto(Settings);
}