if (y<160 && keyboard_check_pressed(vk_down))
{
	y+=32;
}

else if (y>20 && keyboard_check_pressed(vk_up))
{
	y-=32;
}

else if (y>160 && keyboard_check_pressed(vk_down))
{
	y=20;
}

else if (y=20 && keyboard_check_pressed(vk_up))
{
	y=180;

}

else if (y=180 && keyboard_check_pressed(vk_enter))
{
	room_goto(Menu);
}