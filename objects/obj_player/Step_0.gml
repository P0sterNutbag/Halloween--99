// CONTROLS //
var key_right =  max(keyboard_check(ord("D")),keyboard_check(vk_right));
var key_left =  max(keyboard_check(ord("A")),keyboard_check(vk_left));
var key_up =  max(keyboard_check(ord("W")),keyboard_check(vk_up));
var key_down =  max(keyboard_check(ord("S")),keyboard_check(vk_down));
var key_interact = max(keyboard_check_pressed(ord("E")),keyboard_check_pressed(vk_space)); 

// STATE MACHINE //
switch (state) {
#region // WALK STATE //
case states.walk:
	// move
	hsp = (key_right - key_left)*spd;
	vsp = (key_down - key_up)*spd;
	//scr_move_collide(hsp,vsp,"collision");
	scr_collision(hsp,vsp,par_solid);
	
	// interact
	var inst = collision_circle(x,y-5,8,par_interact,false,false);
	if inst and key_interact {
		inst.active = true;
	}
	
	// animate
	if hsp != 0 or vsp != 0 {
		sprite_index = walk_sprite;
		if hsp > 0  image_xscale = 1;
		else if hsp < 0  image_xscale = -1;
	} else {
		sprite_index = idle_sprite;
	}
break;
#endregion
#region // CUTSCENE STATE //
case states.cutscene:
	
break;
#endregion
}