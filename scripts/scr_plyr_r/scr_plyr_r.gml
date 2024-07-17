// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_plyr_r(){
	#region Variaveis
	enum PLYRSTATE_R {
		FACA,
		FREE,
		GUN,
	}
	
	switch (state){
			case PLYRSTATE_R.FREE: scr_free_pr();break;
			case PLYRSTATE_R.FACA: scr_faca_pr();break;
			case PLYRSTATE_R.GUN: scr_gun_pr();break;
	}
	#endregion
	
	#region Mudar direçâo
	if (keyboard_check(vk_down)){
		dir = PLYRDIR.DOWN;
	}
	else if (keyboard_check(vk_left)){
		dir = PLYRDIR.LEFT;
	}
	else if (keyboard_check(vk_up)){
		dir = PLYRDIR.UP;
	};
	#endregion
}
	
#region Andando
function scr_free_pr() {
	if keyboard_check(vk_right){
		sprite_index = spr_plyr_walk_r;
	}
	else if keyboard_check_released(vk_right){
		sprite_index = spr_plyr_idle_r;
	};
	if (keyboard_check(88) && global.faca=1 && global.atack_faca=1){
		state = PLYRSTATE_R.FACA;
	}
	else if (keyboard_check(88) && global.gun=1 && global.atack_gun=1){
		state = PLYRSTATE_R.GUN;
	}
}
 #endregion
 
function scr_faca_pr(){
	hspeed = 0;
	vspeed = 0;	
	
	
}

function scr_gun_pr(){
	
}
