// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Raposa_idle(){

#region sprites
if (sprite_index = Sraposa_c_andando) {
	sprite_index = Sraposa_c;
}

else if (sprite_index = Sraposa_f_andando) {
	sprite_index = Spraposa_f;
}

else if (sprite_index = Sraposa_d_andando) {
	sprite_index = Sraposa_d;
}

else if (sprite_index = Sraposa_e_andando) {
	sprite_index = Sraposa_e;
}
#endregion

if (estado != scr_raposa_atacando) { //mudar scr_raposa_atacando
        prox_estado = choose(Raposa_andando, Raposa_idle);

        if (prox_estado == Raposa_andando) {
            estado = Raposa_andando;
            dest_x = irandom_range(0, room_width);
            dest_y = irandom_range(0, room_height);
        } 
		else if (prox_estado == Raposa_idle) {
            estado = Raposa_idle;
        }
    }

}