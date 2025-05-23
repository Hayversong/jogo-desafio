
//sem armas
armas[0] = ds_map_create();
ds_map_add(armas[0], "sprite", -1);
ds_map_add(armas[0], "proj", -1);
ds_map_add(armas[0], "proj_speed", 0);
ds_map_add(armas[0], "proj_damage", 0);
ds_map_add(armas[0], "proj_delay", 0);
ds_map_add(armas[0], "automatic", 0);

//pistola
armas[1] = ds_map_create();
ds_map_add(armas[1], "sprite", -1);
ds_map_add(armas[1], "proj", -1);
ds_map_add(armas[1], "proj_speed", 5);
ds_map_add(armas[1], "proj_damage", 10);
ds_map_add(armas[1], "proj_delay", 30);
ds_map_add(armas[1], "automatic", 0);


weapon = 1;
weapon_id = -1;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;

var map = armas[weapon];
sprite = map[?"sprite"];
proj = map[?"proj"];
proj_speed = map[?"proj_speed"];
proj_damage = map[?"proj_damage"];
proj_delay = map[?"proj_delay"];
automatic = map[?"automatic"];