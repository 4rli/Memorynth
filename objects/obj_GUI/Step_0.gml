if (keyboard_check_pressed(90) && pos<1)
{
	pos += 1;
	posx = 1152;
}
else if (keyboard_check_pressed(90) && pos=1)
{
	pos = 0;
	posx = 1024;
}

if (posx = 1024)
{
	global.atack_gun = 1;
	global.atack_faca = 0;
}

else if (posx = 1152)
{
	global.atack_gun = 0;
	global.atack_faca = 1;
}
