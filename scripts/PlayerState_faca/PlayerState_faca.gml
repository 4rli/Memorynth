//algo ta fazendo com que ele priorize o primeiro "if case" e buga o sprite quando acaba
function PlayerState_faca(){
hspeed = 0;
vspeed = 0;

if (sprite_index = Splayer_e || sprite_index = Splayer_e_andando)
{
	faca_esquerda();
}

else if (fim_animacao())
{
	sprite_index = Splayer_e;
	state = playerstate.livre;
}

if (sprite_index = Splayer_d || sprite_index = Splayer_d_andando)
{
	faca_direita();
}

else if (fim_animacao())
{
	 sprite_index = Splayer_d;
	 state = playerstate.livre;
}
 
 //copiar o mesmo pra cima e pra baixo

}

#region direita
function faca_direita() {
if (sprite_index != Splayer_d_faca)
{
	sprite_index = Splayer_d_faca;
	image_index = 0;
	ds_list_clear(atacado);
	mask_index = SplayerHB_d_faca;
}

//isso usa uma hitbox pra atacar ORaposa
 var atacadoAgora = ds_list_create();
 var hits = instance_place_list(x,y,ORaposa, atacadoAgora, false);
 if (hits>0)
 {
	 for (var i = 0; i < hits; i++)
	 {
		 //checa se o instance da ORaposa já foi atacado pelo player
		 var hitID = atacadoAgora [|i];
		 if (ds_list_find_index(atacado,hitID) == -1)
		 {
			 ds_list_add(atacado,hitID);//adiciona instance de Oraposa que foi atacado pra lista de atacados
			 with (hitID)
			 {
				 scr_raposa_tomar_dano(2)
			 }
		 }
	 }
 }

 
 ds_list_destroy(atacadoAgora);
 mask_index = Splayer_d
}
#endregion
#region esquerda
function faca_esquerda(){
if (sprite_index != Splayer_e_faca)
{
	sprite_index = Splayer_e_faca;
	image_index = 0;
	ds_list_clear(atacado);
	mask_index = SplayerHB_e_faca;
}

//isso usa uma hitbox pra atacar ORaposa
 var atacadoAgora = ds_list_create();
 var hits = instance_place_list(x,y,ORaposa, atacadoAgora, false);
 if (hits>0)
 {
	 for (var i = 0; i < hits; i++)
	 {
		 //checa se o instance da ORaposa já foi atacado pelo player
		 var hitID = atacadoAgora [|i];
		 if (ds_list_find_index(atacado,hitID) == -1)
		 {
			 ds_list_add(atacado,hitID);//adiciona instance de Oraposa que foi atacado pra lista de atacados
			 with (hitID)
			 {
				 scr_raposa_tomar_dano(2)
			 }
		 }
	 }
 }

 
 ds_list_destroy(atacadoAgora);
 mask_index = Splayer_e
}
#endregion