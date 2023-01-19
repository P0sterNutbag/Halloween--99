draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_dialogue);
// draw text
draw_set_color(global.main_col);
var xx = global.gui_width/2;
var yy = global.gui_height/2+20;
draw_text(xx,10,"Dress up for Halloween!");
draw_text(xx,yy-6,"Head: "+ds_map_find_value(terms_head,head));
draw_text(xx,yy+6,"Body: "+ds_map_find_value(terms_body,body));
draw_text(xx,yy+18,"Done");

// draw arrows
xx = global.gui_width/2-33;
if ypos == 0 {
	yy = global.gui_height/2+20-5;
	draw_sprite_ext(spr_arrow,0,xx,yy,1,1,0,global.main_col,1);
	draw_sprite_ext(spr_arrow,0,xx+66,yy,-1,1,0,global.main_col,1);
} else if ypos == 1 {
	yy = global.gui_height/2+20+7;
	draw_sprite_ext(spr_arrow,0,xx,yy,1,1,0,global.main_col,1);
	draw_sprite_ext(spr_arrow,0,xx+66,yy,-1,1,0,global.main_col,1);
} else if ypos == 2 {
	yy = global.gui_height/2+20+19;
	draw_sprite_ext(spr_arrow,0,xx+15,yy,-1,1,0,global.main_col,1);
}

// draw character
xx = global.gui_width/2+20;
yy = global.gui_height/2;
draw_sprite_ext(ds_map_find_value(sprites_head,head),0,xx,yy+0.01,1,1,0,global.main_col,1);
draw_sprite_ext(ds_map_find_value(sprites_body,body),0,xx,yy,1,1,0,global.main_col,1);

// draw portrait
xx = global.gui_width/2-35;
yy = global.gui_height/2-40;
draw_sprite_ext(spr_portrait_frame,0,xx,yy,1,1,0,global.main_col,1);
draw_sprite_ext(ds_map_find_value(portrait_body,body),0,xx,yy,1,1,0,global.main_col,1);
draw_sprite_ext(ds_map_find_value(portrait_head,head),0,xx,yy+0.01,1,1,0,global.main_col,1);