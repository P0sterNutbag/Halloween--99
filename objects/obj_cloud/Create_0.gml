xorg = x;
yorg = y;

spd = random_range(0.01,0.15);
var inst = instance_place(x,y,obj_miniroom);
if x > inst.x  spd = -spd;

image_speed = 0;
