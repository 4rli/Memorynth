#region Variaveis pra andar
var _dx = keyboard_check(vk_right)*place_free(x+col,y) - keyboard_check(vk_left)*place_free(x-col,y);
var _dy = keyboard_check(vk_down)*place_free(x,y+col) - keyboard_check(vk_up)*place_free(x,y-col);

if ((_dx != 0) or (_dy !=0))
{
	var _l = sqrt(_dx*_dx + _dy*_dy);
	_dx/=_l;
	_dy/=_l;
}

hspeed = _dx*spd
vspeed = _dy*spd

switch (dir) {
	case PLYRDIR.DOWN: scr_plyr_d(); break;
	case PLYRDIR.LEFT: scr_plyr_l(); break;
	case PLYRDIR.RIGHT: scr_plyr_r(); break;
	case PLYRDIR.UP: scr_plyr_u(); break;
}
#endregion

