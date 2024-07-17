// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_plyr_u(){
	#region Variaveis
	enum PLYRSTATE_U {
		FACA,
		FREE,
		GUN,
	}
	
	switch (state){
			case PLYRSTATE_U.FREE: scr_free_pu();break;
			case PLYRSTATE_U.FACA: scr_faca_pu();break;
			case PLYRSTATE_U.GUN: scr_gun_pu();break;
	}
	#endregion
	
	#region Mudar direçâo
	if (keyboard_check(vk_down)){
		dir = PLYRDIR.DOWN;
	}
	else if (keyboard_check(vk_left)){
		dir = PLYRDIR.LEFT;
	}
	else if (keyboard_check(vk_right)){
		dir = PLYRDIR.RIGHT;
	};
	#endregion
};

#region Andando
function scr_free_pu(){
	if keyboard_check(vk_up){
		sprite_index = spr_plyr_walk_u;
	}
	else if keyboard_check_released(vk_up){
		sprite_index = spr_plyr_idle_u;
	};
	if (keyboard_check(88) && global.faca=1 && global.atack_faca=1){
		state = PLYRSTATE_U.FACA;
	}
	else if (keyboard_check(88) && global.gun=1 && global.atack_gun=1){
		state = PLYRSTATE_U.GUN;
	}
};
#endregion

function  scr_faca_pu(){
	
};

function  scr_gun_pu(){
	
};