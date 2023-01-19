event_inherited();

opened = false

my_candy = scr_get_candy(irandom_range(1,3));
my_dialogue = choose("Awww, aren't you just precious. Take some candy!","Happy Halloween! Here, have some candy.","Boo! Take some ghost candy - if you dare!");

candy_scene = [
[cutscene_play_sound,snd_doorknock,1,false],
[cutscene_dialogue,noone,["*knock* *knock*"]],
[cutscene_wait,0.75],
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_wait,0.5],
[cutscene_dialogue,obj_player,["trick 'r treat!"]],
[cutscene_dialogue,id,[my_dialogue]],
[cutscene_choose_candy,my_candy],
[cutscene_change_sprite,id,sprite_index,0],
[cutscene_change_value,id,"opened",true],
];

candy_scene2 = [
[cutscene_dialogue,noone,["*knock* *knock*"]],
[cutscene_wait,0.75],
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_wait,0.5],
[cutscene_dialogue,obj_player,["trick 'r treat!"]],
[cutscene_dialogue,id,["Get out of here kid, I already gave you candy."]],
[cutscene_change_sprite,id,sprite_index,0],
];

image_speed = 0;
image_blend = global.main_col;
