// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_plyr_l(){
	#region Variaveis
	enum PLYRSTATE_L {
		FACA,
		FREE,
		GUN,
	}
	
	switch (state){
			case PLYRSTATE_L.FREE: scr_free_pl();break;
			case PLYRSTATE_L.FACA: scr_faca_pl();break;
			case PLYRSTATE_L.GUN: scr_gun_pl();break;
	}
	#endregion
	
	#region Mudar direçâo
	if (keyboard_check(vk_down)){
		dir = PLYRDIR.DOWN;
	}
	else if (keyboard_check(vk_right)){
		dir = PLYRDIR.RIGHT;
	}
	else if (keyboard_check(vk_up)){
		dir = PLYRDIR.UP;
	};
	#endregion
};

#region Andando
function scr_free_pl(){
	if keyboard_check(vk_left){
		sprite_index = spr_plyr_walk_l;
	}
	else if keyboard_check_released(vk_left){
		sprite_index = spr_plyr_idle_l;
	};
	if (keyboard_check(88) && global.faca=1 && global.atack_faca=1){
		state = PLYRSTATE_L.FACA;
	}
	else if (keyboard_check(88) && global.gun=1 && global.atack_gun=1){
		state = PLYRSTATE_L.GUN;
	}	
};
#endregion

function scr_faca_pl(){
	
};

function scr_gun_pl(){
	
};