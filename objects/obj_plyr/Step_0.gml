//Esse é só pra testar baú e camera
if keyboard_check(vk_left){
	x-=3;
}
else if keyboard_check(vk_up){
	y-=3;
}
else if keyboard_check(vk_right){
	x+=3;
}
else if keyboard_check(vk_down){
	y+=3;
};

#region Passos
if keyboard_check_pressed(vk_down || vk_left || vk_right || vk_up){
	audio_play_sound(snd_steps, 0, true);
}

else if keyboard_check_released(vk_down || vk_left || vk_right || vk_up){
	audio_pause_sound(snd_steps);
};
#endregion