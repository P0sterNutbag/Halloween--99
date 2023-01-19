height = (candy_amount+1)*space+(text_yoffset*2);
draw_set_valign(fa_top);
// draw box
var x1 = xoffset-width/2;
var y1 = yoffset-height/2;
var x2 = xoffset+width/2;
var y2 = yoffset+height/2;
draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_color(global.main_col);
draw_sprite_ext(spr_hud_line,0,x1,y1,width+1,1,0,global.main_col,1);
draw_sprite_ext(spr_hud_line,0,x1,y2,width+1,1,0,global.main_col,1);
draw_sprite_ext(spr_hud_line,0,x1,y1,1,height,0,global.main_col,1);
draw_sprite_ext(spr_hud_line,0,x2,y1,1,height,0,global.main_col,1);

// draw text
for (var i=0; i<candy_amount+1; i++) {
	if i < candy_amount  draw_text(x1+text_xoffset,y1+space*i,string(my_candy[| i]));
	else  draw_text(x1+text_xoffset,y1+space*i,"return");
	// draw selector
	if ypos == i {
		draw_sprite_ext(spr_arrow,0,x1+arrow_xoffset,y1+8+space*i,-1,1,0,global.main_col,1);
	}
}
