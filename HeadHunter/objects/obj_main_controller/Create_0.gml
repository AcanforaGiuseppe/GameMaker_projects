/// @description Insert description here
// You can write your code in this editor

//randomize();
bg = instance_create_depth(0, 0, 0, obj_bg);
hero = instance_create_depth(random(room_width), random(room_height), 0, obj_hero);

repeat(10)
{
	instance_create_depth(random_range(32,room_width-32),random_range(32,room_height-32), 0, obj_dummy);
}