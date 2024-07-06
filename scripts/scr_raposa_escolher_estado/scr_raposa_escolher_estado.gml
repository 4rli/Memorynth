// Função para definir a direção da sprite
#region Direção
function definir_direcao_sprite(is_moving) {
    var is_attacking = (estado == scr_raposa_atacando);

    if (abs(hveloc) > abs(vveloc)) {
        if (hveloc > 0) {
            if (is_attacking) {
                sprite_index = sprite_atacando_direita;
            } else {
                sprite_index = is_moving ? sprite_andando_direita : sprite_parado_direita;
            }
        } else {
            if (is_attacking) {
                sprite_index = sprite_atacando_esquerda;
            } else {
                sprite_index = is_moving ? sprite_andando_esquerda : sprite_parado_esquerda;
            }
        }
    } else {
        if (vveloc > 0) {
            if (is_attacking) {
                sprite_index = sprite_atacando_frente;
            } else {
                sprite_index = is_moving ? sprite_andando_frente : sprite_parado_frente;
            }
        } else {
            if (is_attacking) {
                sprite_index = sprite_atacando_tras;
            } else {
                sprite_index = is_moving ? sprite_andando_tras : sprite_parado_tras;
            }
        }
    }
}
#endregion

// Função para checar a proximidade do jogador e mudar o estado para perseguir ou atacar
#region Proximidade
function scr_raposa_checar_personagem() {
    if (distance_to_object(Oplayer_d) <= ataque_dist) {
        estado = scr_raposa_atacando;
        ataque_relogio = ataque_duracao; // Reseta o relógio de ataque
    } else if (distance_to_object(Oplayer_d) <= dist_aggro) {
        estado = scr_raposa_perseguindo;
    }
}
#endregion

// Função para lidar com colisões
#region colisão
function scr_raposa_colisao() {
    // Colisão horizontal
    if (place_meeting(x + hveloc, y, Oparede_col)) {
        while (!place_meeting(x + sign(hveloc), y, Oparede_col)) {
            x += sign(hveloc);
        }
        hveloc = 0;
    }
    x += hveloc;

    // Colisão vertical
    if (place_meeting(x, y + vveloc, Oparede_col)) {
        while (!place_meeting(x, y + sign(vveloc), Oparede_col)) {
            y += sign(vveloc);
        }
        vveloc = 0;
    }
    y += vveloc;
}
#endregion

// Função para escolher o próximo estado
#region escolher
function scr_raposa_escolher_estado() {
    scr_raposa_checar_personagem();
    if (estado != scr_raposa_atacando) {
        prox_estado = choose(scr_raposa_andando, scr_raposa_parado);

        if (prox_estado == scr_raposa_andando) {
            estado = scr_raposa_andando;
            dest_x = irandom_range(0, room_width);
            dest_y = irandom_range(0, room_height);
        } 
		else if (prox_estado == scr_raposa_parado) {
            estado = scr_raposa_parado;
        }
    }
}
#endregion

// Função para o estado andando
#region andando
function scr_raposa_andando() {
    scr_raposa_checar_personagem();
    if (estado == scr_raposa_atacando) return;

    image_speed = 1;
    if (distance_to_point(dest_x, dest_y) > veloc) {
        var _dir = point_direction(x, y, dest_x, dest_y);
        hveloc = lengthdir_x(veloc, _dir);
        vveloc = lengthdir_y(veloc, _dir);

        scr_raposa_colisao();
        definir_direcao_sprite(true); // Define a direção da sprite para andando
    } else {
        x = dest_x;
        y = dest_y;
        estado = scr_raposa_parado; // Muda o estado para parado quando chega ao destino
    }
}
#endregion

// Função para o estado parado
#region Parado
function scr_raposa_parado() {
    scr_raposa_checar_personagem();
    if (estado == scr_raposa_atacando) return;

    image_speed = 0.5;
    definir_direcao_sprite(false); // Define a direção da sprite para parado
}
#endregion

// Função para o estado perseguindo
#region Perseguindo
function scr_raposa_perseguindo() {
    scr_raposa_checar_personagem();
    if (estado == scr_raposa_atacando) return;

    image_speed = 1.5;
    dest_x = Oplayer_d.x;
    dest_y = Oplayer_d.y;

    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc_perseg, _dir);
    vveloc = lengthdir_y(veloc_perseg, _dir);

    scr_raposa_colisao();
    definir_direcao_sprite(true); // Define a direção da sprite para andando

    if (distance_to_object(Oplayer_d) >= dist_desaggro) {
        estado = scr_raposa_escolher_estado;
        alarm[0] = irandom_range(120, 240); 
    }
}
#endregion

// Função para a raposa atacar
#region Atacando
function scr_raposa_atacando() {
    image_speed = 1.5;

    // Definir sprite de ataque com base na direção
    definir_direcao_sprite(true);

    ataque_relogio -= 1;
    if (ataque_relogio <= 0) {
        estado = scr_raposa_tomar_dano(hp); // Volta para o estado normal após o ataque
    }

    // Verifica colisão com o jogador
   // if (place_meeting(x, y, Oplayer_d)) {
        // lógica de dano aqui
    //    global.hp -= 1 ; // reduz pontos de vida do jogador
    //}
}
#endregion

// Função para o dano do player
#region Vivo_ou_morto
function scr_raposa_tomar_dano(){
	var _damage = argument0;
	
	hp -= _damage;
	
	if (hp > 0)
	{
		estado = scr_raposa_parado()
	}
	
	else
	{
		estado = scr_raposa_morta()
	}
}
#endregion


function scr_raposa_morta(){
sprite_index = Sraposa_f_morta;
}
