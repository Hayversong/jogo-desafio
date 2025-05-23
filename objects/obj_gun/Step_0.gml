if(instance_exists(weapon_id)){
	x = weapon_id.x;
	y = weapon_id.y;
	
	weapon_x = x + lengthdir_x(16, weapon_dir);
	weapon_y = y + lengthdir_y(16, weapon_dir);
	
	image_angle = weapon_dir;
	
	function atirar(){
		//atira né 
		if(!weapon > 0){
			return false;
		}
		
		var proj = instance_create_layer(weapon_x, weapon_y, "Projeteis", obj_proj)
		proj.sprite_index = spr_proj;
		proj.image_angle = weapon_dir;
		proj.direction = weapon_dir;
		proj.speed = proj_speed;
		proj.delay = proj_delay;
		proj.damage = proj_damage;
		
	}
	
}else{
	instance_destroy();	
}