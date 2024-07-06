draw_sprite_ext(sprite_index, image_index, x,y, largura/sprite_width, altura/sprite_height, 0, c_white, 1)

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i<op_tamanho; i++)
{
	var _c = c_white;
	if pos == i {_c= make_color_rgb(30, 34,135)};
	draw_text_color(x+op_canto, y+op_canto + op_espaco*i + op_topo, opcao[i], _c,_c,_c,_c,1);
}
