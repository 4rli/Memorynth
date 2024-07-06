randomize();

state = raposastate.idle

enum raposastate{
	idle,
	andando,
	perseguindo,
	atacando,
	morta
}

#region variaveis
hp = 5 //edita com as suas preferencias dps
//estado = scr_raposa_tomar_dano(hp);
prox_estado = 0;

hveloc = 0;
vveloc = 0;
veloc = 1.5;
veloc_perseg = 2;
ataque_dist = 10; // Distância para iniciar ataque
ataque_duracao = 4; // Duração do ataque em frames
ataque_relogio = 0;

dest_x = 0;
dest_y = 0;

alarm[0] = 1;

// distancia de alcance de reconhecimento do jogador
dist_aggro = 80;
dist_desaggro = 250; 
#endregion

// var das sprites
#region sprites
// Sprites de estado parado
sprite_parado_frente = Spraposa_f;
sprite_parado_tras = Sraposa_c; 
sprite_parado_esquerda = Sraposa_e; 
sprite_parado_direita =Sraposa_d; 

// Sprites de estado andando
sprite_andando_frente = Sraposa_f_andando;
sprite_andando_tras = Sraposa_c_andando;
sprite_andando_esquerda = Sraposa_e_andando;
sprite_andando_direita = Sraposa_d_andando; 

// Sprites de estado atacando
sprite_atacando_frente = Sraposa_f_morde;
sprite_atacando_tras = Sraposa_c_morde
sprite_atacando_direita = Sraposa_d_morde;
sprite_atacando_esquerda = Sraposa_e_mordida;
#endregion


