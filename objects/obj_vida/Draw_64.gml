var _escala = 25; // Escala para aumentar o tamanho do HUD
var _guia = display_get_gui_height();
var _spra = sprite_get_height(spr_hp_player);
var _huda = _guia - _spra * _escala;

// Desenhar o HUD de acordo com o valor de global.hp
if global.hp >= 5 {
    draw_sprite_ext(spr_hp_player, 5, posicao_x, posicao_y, _escala, _escala, 0, c_white, 1);
}
else if global.hp >= 4 {
    draw_sprite_ext(spr_hp_player, 4, posicao_x, posicao_y, _escala, _escala, 0, c_white, 1);
}
else if global.hp >= 3 {
    draw_sprite_ext(spr_hp_player, 3, posicao_x, posicao_y, _escala, _escala, 0, c_white, 1);
}
else if global.hp >= 2 {
    draw_sprite_ext(spr_hp_player, 2, posicao_x, posicao_y, _escala, _escala, 0, c_white, 1);
}
else if global.hp >= 1 {
    draw_sprite_ext(spr_hp_player,1, posicao_x, posicao_y, _escala, _escala, 0, c_white, 1);
}
else if global.hp > 0 {
    draw_sprite_ext(spr_hp_player, 0, posicao_x, posicao_y, _escala, _escala, 0, c_white, 1);
}
