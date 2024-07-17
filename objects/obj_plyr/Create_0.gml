//90 troca de inventário
//88 ataque

#region Variaveis
spd = 2;
col = spd+0;

global.plyr_hp=5;

global.gun=0;
global.faca=1;
#endregion

#region Player code
state = PLYRSTATE_R.FREE;
dir = PLYRDIR.RIGHT; //dir=direction(direção)
atacked = ds_list_create();

enum PLYRDIR {
	DOWN,
	LEFT,
	RIGHT,
	UP,
}
#endregion