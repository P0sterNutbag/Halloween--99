event_inherited();

opened = false
open_timer = 0;
open_timer_max = random_range(120,190);
light_timer = random_range(45,90);

range = 32;

old_scene_info = [
[cutscene_dialogue,noone,["*knock* *knock*"]],
[cutscene_change_value,id,"open_timer",open_timer_max],
[cutscene_set_alarm,id,0,light_timer],
];

my_candy = scr_get_candy(irandom_range(1,3));
my_dialogue = choose("Awww, aren't you just precious. Take some candy!","Happy Halloween! Here, have some candy.","Happy Halloween! They grow up so fast.","Aren't you a little old to be trick-or-treating?")

scene_info = [
[cutscene_dialogue,noone,["*knock* *knock*"]],
[cutscene_wait,1],
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_dialogue,obj_player,["trick 'r treat!"]],
[cutscene_dialogue,id,[my_dialogue]],
[cutscene_choose_candy,my_candy],
[cutscene_change_sprite,id,sprite_index,0],
[cutscene_change_value,id,"opened",true],
];


candy_scene = [
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_dialogue,obj_player,["trick 'r treat!"]],
[cutscene_dialogue,id,[my_dialogue]],
[cutscene_choose_candy,my_candy],
[cutscene_change_sprite,id,sprite_index,0],
[cutscene_change_value,id,"opened",true],
];

candy_scene2 = [
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_dialogue,obj_player,["trick 'r treat!"]],
[cutscene_dialogue,id,["Get out of here kid, I already gave you candy."]],
[cutscene_change_sprite,id,sprite_index,0],
];

image_speed = 0;
