audio_play_sound(snd_damage, 4, false);
if (!invulneravel) {
    vida -= 10; // Dano causado pelo inimigo

    // Ativa invulnerabilidade por um curto tempo (ex: 30 frames = 0.5 seg)
	invulneravel = true;
    invuln_timer = 30;

    // tentativa de colocar Knockback ou efeitol:
    // other.x += lengthdir_x(8, point_direction(id.x, id.y, other.x, other.y));
    // other.y += lengthdir_y(8, point_direction(id.x, id.y, other.x, other.y));
}
