#region Andando
spd = 3.5;
col = spd + 0;
direction = 1;
#endregion

#region Inventário
global.tiro = 0;
global.faca = 0;
#endregion
//Comecinho da programação de ataque 
//(to vendo umas diferentes no youtube)

state = playerstate.livre;
atacado = ds_list_create();

enum playerstate
{
	livre,
	tiro,
	faca,
}


// hp do player

global.hp = 5;