//draw_set_font(fnt_menu); // opcional
draw_set_color(c_white);

draw_text(100, 50, "MENU PRINCIPAL");

if (opcao == 0) draw_set_color(c_yellow);
draw_text(100, 100, "JOGAR");
draw_set_color(c_white);

if (opcao == 1) draw_set_color(c_yellow);
draw_text(100, 150, "SAIR");
draw_set_color(c_white);
