draw_sprite_ext(spr_inventario,image_index, 1770, 150, 8, 8, 0, c_white, 1);

if (global.tiro = 1)
{
	draw_sprite_ext(spr_arma_tiro,image_index, 1770, 150, 8, 8, 0, c_white, 1);
}

if (global.faca = 1)
{
	draw_sprite_ext(spr_arma_faca,image_index, 1770, 150, 8, 8, 0, c_white, 1)
}
draw_sprite_ext(spr_inventario_selecionado,image_index, posx, 150, 8, 8, 0, c_white, 1);

//z=90, x=88