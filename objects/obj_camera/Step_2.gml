// move //
if instance_exists(cam_target) {
	var xx,yy;
	xx = cam_target.x-(width/2)+xoffset;
	yy = cam_target.y-(height/2)-yoffset;
	var mr = instance_position(cam_target.x,cam_target.y-4,obj_miniroom);
	//var other_mr = instance_place(x+width*sign(obj_player.hsp),y+height*sign(obj_player.vsp),obj_miniroom);
	//if other_mr == mr  other_mr = noone;
	if mr {//and !other_mr {
		xx = clamp(xx,mr.bbox_left+xoffset*2,mr.bbox_right-width);
		yy = clamp(yy,mr.bbox_top-yoffset,mr.bbox_bottom-height);
	}
}

xpos = lerp(xpos,xx,1);
ypos = lerp(ypos,yy,1);

camera_set_view_pos(view_camera[0],xpos,ypos);

camera_set_view_size(view_camera[0],width,height);
