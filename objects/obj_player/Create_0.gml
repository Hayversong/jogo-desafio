vida = 100;
invulneravel = false;
invuln_timer = 0;

tiro_cooldown = 0; // contador de frames para liberar o próximo tiro


estado = "parado"

vel =	2;
velh =	0;
velv =	0;
my_gun = instance_create_layer(x,y,"weapons", obj_gun);
my_gun.weapon_id = self;


direita		=	0;
esquerda	=	0;
cima		=	0;
baixo		=	0;

dir			=	0;

//escondendo a setinha
window_set_cursor(cr_none);

controles = function(){
	direita = keyboard_check(ord("D"));
	esquerda = keyboard_check(ord("A"));
	cima = keyboard_check(ord("W"));
	baixo = keyboard_check(ord("S"));
	
	//velh = (direita - esquerda) * vel;
	//velv = (baixo - cima) * vel;
	
	var _dir = point_direction(0, 0, direita - esquerda, baixo - cima);
	if (direita xor esquerda or baixo xor cima){
		velh = lengthdir_x(vel, _dir);
		velv = lengthdir_y(vel, _dir);
	}else{
		velh = 0;
		velv = 0;
	}
	
	show_debug_message(velh);
}

maquina_estados = function()
{
	switch(estado)
	{
		case "parado":
		{
			controles();
			muda_sprite();
			//sem animação
			image_speed = 0;
			
			//se eu apertar eu movo
			if(direita xor esquerda or baixo xor cima)
			{
				estado = "movendo";	
			}
			break;
		}
		
		case "movendo":
		{
			controles();
			muda_sprite();
			image_speed = 1;
			
			//se eu não aperto nenhuma tecla, eu n movo
			if(velh == 0 && velv == 0)
			{
				estado = "parado";
			}
			break;
		}
	}
}

muda_sprite = function()
{
	
	if(direita xor esquerda or cima xor baixo){
		dir = point_direction(0, 0, direita-esquerda, baixo-cima);
	}
	
	switch(dir){
		case 0: sprite_index = spr_player_right; break;
		case 90: sprite_index = spr_player_up; break;
		case 180: sprite_index = spr_player_left; break;
		case 270: sprite_index = spr_player_down; break;
	}
		
	
}