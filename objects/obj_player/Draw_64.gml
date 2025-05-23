draw_set_color(c_white);
draw_text(32, 64, "Vida: " + string(obj_player.vida));

draw_set_color(c_white);
//draw_set_font(fnt_score); // (opcional) defina uma fonte no editor e use aqui
draw_text(32, 32, "Pontos: " + string(global.pontos));
