// sky
draw_sprite(spr_sky,0,56,0);
draw_sprite_ext(spr_hud_line,0,55,31,global.gui_width,1,0,global.main_col,1);
draw_sprite_ext(spr_moon,0,175,5,1,1,0,global.main_col,1);
draw_sprite(spr_cloud,0,obj_hud_cloud1.xpos,obj_hud_cloud1.ypos);
draw_sprite(spr_cloud,0,obj_hud_cloud2.xpos,obj_hud_cloud2.ypos);

// left hud
draw_set_color(c_black);
draw_rectangle(0,0,55,global.gui_height,false);
// portrait
var xx = 8;
var yy = 8
draw_sprite_ext(spr_portrait_frame,0,xx,yy,1,1,0,global.main_col,1);
draw_sprite_ext(sprites_body[? global.player_body],0,xx,yy,1,1,0,global.main_col,1);
draw_sprite_ext(sprites_head[? global.player_head],0,xx,yy,1,1,0,global.main_col,1);
//draw_sprite_ext(spr_hpbar,obj_player.hp,8,50,1,1,0,global.main_col,1);
draw_sprite_ext(spr_inventory,0,8,52,1,1,0,global.main_col,1);
draw_sprite_ext(spr_hud_line,0,55,0,1,global.gui_height,0,global.main_col,1);

/* INVENTORY //
size = ds_list_size(obj_player.inventory_list);
for (var i=0; i<size; i++) {
	// draw ivnentory items
	xx = 55+15*i;
	yy = 31;
	draw_sprite_ext(spr_itembox,0,xx,yy,1,1,0,global.main_col,1);
	var item_spr = ds_list_find_value(obj_player.inventory_list,i);
	draw_sprite_ext(item_spr,0,xx,yy,1,1,0,global.main_col,1);
	if mouse_check_button_pressed(mb_left) {
		if mouse_x > xx and mouse_x < xx+16 and mouse_y > yy and mouse_y < yy+16 {
			obj_mouse.my_item_spr = item_spr;
		}
	}
}
