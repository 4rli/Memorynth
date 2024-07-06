// Verifica colisão e interação
if (estado == "fechado" && distance_to_object(Oplayer_d) < 32) {
    if (keyboard_check_pressed(vk_shift)) { // Verifica se a tecla espaço foi pressionada
        estado = "abrindo";
        sprite_index = spr_bau_abrindo; // Muda para a animação de abrir
        image_index = 0; // Reinicia a animação
        image_speed = 0.2; // Velocidade da animação
		posicao_bau()
    }
}

// Verifica se a animação terminou
if (estado == "abrindo" && image_index >= image_number - 1) {
    estado = "aberto"; // Muda o estado para aberto
    image_speed = 0; // Para a animação
}

