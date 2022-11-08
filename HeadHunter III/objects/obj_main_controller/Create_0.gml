/// @description Insert description here
// You can write your code in this editor
show_debug_message("hello world");
randomize();

global.limit = 32;
var mapstr = "0123456789";

global.font = font_add_sprite_ext(spr_font,mapstr,1,1);
global.font2x = font_add_sprite_ext(spr_font_2x,mapstr,1,1);
global.fontshadow = font_add_sprite_ext(spr_font_shadow,mapstr,1,1);
global.fontshadow2x = font_add_sprite_ext(spr_font_shadow_2x,mapstr,1,1);

global.points = 0;
global.hipoints = 0;
var map = ds_map_secure_load("saveaivrm.dat");
if(map != -1)
{
	global.hipoints = ds_map_find_value(map,"hipoints");
	ds_map_destroy(map);
}

enum HeroState 
{
	Idle,
	Attack,
	Die,
	Dead
}

enum EnemyState 
{
	Spawn,
	Idle,
	Charge,
	Attack,
	Die,
	Dead
}

enum AttackType
{
	Melee,
	Ranged
}

floorsurf = instance_create_depth(0,0,0,obj_floorSurface);
//bg
hero = instance_create_depth(0,0,0,obj_hero);


//camera
//factory
factory = instance_create_depth(0,0,0,obj_factory);
factory.factoryState = 1;

gui = instance_create_depth(0,0,0,obj_hud);
//gui

