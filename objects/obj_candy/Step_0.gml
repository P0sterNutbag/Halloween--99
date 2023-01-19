if state = "fall" {
	vsp += spd;
	spd += grav;
	if bbox_bottom+vsp >= ybot { 
		vsp = 0;
		y = ybot-sprite_height;
		state = "still";
	}
	var inst = instance_place(x,y+vsp,obj_candy);
	if inst { 
		vsp = 0;
		y = inst.bbox_top-sprite_height;
		state = "still";
	}
}

x += hsp;
y += vsp;
