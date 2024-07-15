draw_sprite_ext(spr_inventario, image_index, 1024, 0, 4, 4, 0, c_white,1);

if (global.arma = 1)
{
	draw_sprite_ext(spr_arma,image_index, 1024, 0, 4, 4, 0, c_white, 1);
}

if (global.faca = 1)
{
	draw_sprite_ext(spr_faca,image_index, 1024, 0, 4, 4, 0, c_white, 1)
}

draw_sprite_ext(spr_select_inventario,image_index, posx, 0, 4, 4, 0, c_white, 1);

