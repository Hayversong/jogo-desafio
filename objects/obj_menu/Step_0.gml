if (keyboard_check_pressed(vk_down)) {
    opcao = (opcao + 1) mod 2;
}
if (keyboard_check_pressed(vk_up)) {
    opcao = (opcao + 1) mod 2;
}

if (keyboard_check_pressed(vk_enter)) {
    if (opcao == 0) {
		audio_stop_sound(menu_music);
        room_goto(Room_jogo);
    } else if (opcao == 1) {
        game_end();
    }
}

/*if (point_in_rectangle(mouse_x, mouse_y, 100, 100, 200, 130)) {
    room_goto(Room_jogo);
}
if (point_in_rectangle(mouse_x, mouse_y, 100, 150, 200, 180)) {
    game_end();
}*/

