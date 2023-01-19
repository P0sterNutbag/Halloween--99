// ANIMATE HEAD //
if sprite_index == walk_sprite {
	if body = bodies.pumpkin or body = bodies.skeleton {
		if floor(image_index) == 0 or floor(image_index) == 2  var yy = y-1;
		else yy = y;
	} else if body = bodies.witch or body = bodies.ghost {
		if floor(image_index) == 0 or floor(image_index) == 2  var yy = y+1;
		else yy = y;
	}
} else yy = y;
draw_sprite_ext(ds_map_find_value(head_sprites,head),0,x,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

// DRAW SELF //
draw_self();
