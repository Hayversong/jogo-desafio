if (invulneravel) {
    invuln_timer -= 1;
    if (invuln_timer <= 0) {
        invulneravel = false;
    }
}

if (vida <= 0) {
    show_debug_message("morreu :c");
	audio_stop_sound(snd_game);
    room_goto_next(); // ou troca de room para a tela de game over
}

maquina_estados();


show_debug_message(estado);

if(place_meeting(x + velh, y, obj_colisor)){
	while(!place_meeting(x+sign(velh),y, obj_colisor)){
		
		x = x + sign(velh);
			
	}
	velh = 0;
}

x += velh;

if(place_meeting(x, y + velv, obj_colisor)){
	while(!place_meeting(x,y+sign(velv), obj_colisor)){
		
		y = y + sign(velv);
			
	}
	velv = 0;
}

y += velv;

if (tiro_cooldown > 0) {
    tiro_cooldown -= 1;
}

// Decrementa cooldown no player
if (tiro_cooldown > 0) {
    tiro_cooldown -= 1;
}

// Atualiza direção da arma
if (instance_exists(my_gun)) {
    with (my_gun) {
        weapon_dir = point_direction(other.x, other.y, mouse_x, mouse_y);
    }
}

// Atira só se cooldown zerado e botão pressionado
if (mouse_check_button_pressed(mb_left) && tiro_cooldown <= 0 && instance_exists(my_gun)) {
    with (my_gun) {
        atirar();
		audio_play_sound(snd_shot, 4, false);
    }
    tiro_cooldown = my_gun.proj_delay; // reseta cooldown com o delay da arma
}