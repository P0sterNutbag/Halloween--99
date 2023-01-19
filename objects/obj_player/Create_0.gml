state = states.walk;
spd = 0.55;

hp = 10;

inventory_size = 5;
candy_list = ds_list_create();
inventory_list = ds_list_create();
ds_list_add(inventory_list,spr_poop);
ds_list_add(inventory_list,spr_firecracker);

// set costume
head = global.player_head;
body = global.player_body;
head_sprites = ds_map_create();
ds_map_add(head_sprites,heads.pumpkin,spr_player_head_pumpkin);
ds_map_add(head_sprites,heads.witch,spr_player_head_witch);
ds_map_add(head_sprites,heads.ghost,spr_player_head_ghost);
ds_map_add(head_sprites,heads.skeleton,spr_player_head_skeleton);

if body == bodies.pumpkin {
	idle_sprite = spr_player_body_pumpkin_idle;
	walk_sprite = spr_player_body_pumpkin_run;
} else if body == bodies.witch {
	idle_sprite = spr_player_body_witch_idle;
	walk_sprite = spr_player_body_witch_run;
} else if body == bodies.ghost {
	idle_sprite = spr_player_body_ghost_idle;
	walk_sprite = spr_player_body_ghost_run;
} else if body == bodies.skeleton {
	idle_sprite = spr_player_body_skeleton_idle;
	walk_sprite = spr_player_body_skeleton_run;
}

// make candy map
my_candy = ds_map_create();
var l = ds_list_size(global.candies);
for (var i=0; i<l; i++) {
	ds_map_add(my_candy,global.candies[| i],0);
}


hsp = 0; vsp = 0;

image_blend = global.main_col;
