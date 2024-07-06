// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_livre(){
var dx = keyboard_check(vk_right)*place_free(x+col,y) - keyboard_check(vk_left)*place_free(x-col,y);
var dy = keyboard_check(vk_down)*place_free(x,y+col) - keyboard_check(vk_up)*place_free(x,y-col);

if ((dx != 0) or (dy !=0))
{
	var l = sqrt(dx*dx + dy*dy);
	dx/=l;
	dy/=l;
}

hspeed = dx*spd
vspeed = dy*spd

#region Andando
if keyboard_check(vk_left)
{
	sprite_index = Splayer_e_andando;

}

else if keyboard_check(vk_right)
{
	sprite_index = Splayer_d_andando;
}

else if keyboard_check(vk_up)
{
	sprite_index = Splayer_c_andando;
}

else if keyboard_check(vk_down)
{
	sprite_index = Splayer_f_andando;
}
#endregion

#region idle
if keyboard_check_released(vk_left) 
{
	sprite_index = Splayer_e;
}

else if keyboard_check_released(vk_right)
{
	sprite_index = Splayer_d;
}
else if keyboard_check_released(vk_up)
{
	sprite_index = Splayer_c;
}

else if keyboard_check_released(vk_down)
{
	sprite_index = Splayer_f;
}
#endregion

if (keyboard_check(88) && global.faca=1 && global.ataque_faca = 1)
{
	state = playerstate.faca;
}

else if (keyboard_check(88) && global.tiro=1 && global.ataque_tiro = 1)
{
	state = playerstate.tiro;
}
}