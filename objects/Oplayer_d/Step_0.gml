//Movimentação

switch (state)
{
	case playerstate.livre: PlayerState_livre(); break;
	case playerstate.faca: PlayerState_faca(); break;
	case playerstate.tiro: PlayerState_tiro(); break;
	
}

if global.hp < 1 {
	room_restart();
}