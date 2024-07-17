// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_plyr_d(){
	#region Variaveis
	enum PLYRSTATE_D {
		FACA,
		FREE,
		GUN,
	}
	
	switch (state){
			case PLYRSTATE_D.FREE: scr_free_pd();break;
			case PLYRSTATE_D.FACA: scr_faca_pd();break;
			case PLYRSTATE_D.GUN: scr_gun_pd();break;
	}
	#endregion
	
	#region Mudar direçâo
	if (keyboard_check(vk_left)){
		dir = PLYRDIR.LEFT;
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
function scr_free_pd(){
	if keyboard_check(vk_down){
		sprite_index = spr_plyr_walk_d;
	}
	else if keyboard_check_released(vk_down){
		sprite_index = spr_plyr_idle_d;
	};
	if (keyboard_check(88) && global.faca=1 && global.atack_faca=1){
		state = PLYRSTATE_D.FACA;
	}
	else if (keyboard_check(88) && global.gun=1 && global.atack_gun=1){
		state = PLYRSTATE_D.GUN;
	}	
};
#endregion

function scr_faca_pd(){
	
};

function scr_gun_pd(){
	
}