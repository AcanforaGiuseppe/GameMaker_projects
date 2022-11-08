/// @description Insert description here
// You can write your code in this editor


//shoot
var blt = instance_create_depth(x,y,0,obj_bullet);
blt.direction= point_direction(x,y,global.mc.hero.x,global.mc.hero.y);