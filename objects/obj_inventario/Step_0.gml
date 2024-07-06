if (keyboard_check_pressed(90) && pos<1)
{
	pos+=1;
	posx = 2026;
}
else if (keyboard_check_pressed(90) && pos=1)
{
	pos=0;
	posx = 1770;
}

if (posx = 1770)
{
	global.ataque_tiro = 1;
	global.ataque_faca = 0;
}

else if (posx = 2026)
{
	global.ataque_tiro = 0;
	global.ataque_faca = 1;
}
