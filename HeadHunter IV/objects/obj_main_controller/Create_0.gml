/// @description Insert description here
// You can write your code in this editor

//GESTIONE MEGLIO CON STATE MACHINE
show_debug_message("hello world");
randomize();

global.mc=id;
global.limit = 32;
var mapstr = "0123456789";

global.font = font_add_sprite_ext(spr_font,mapstr,1,1);
global.font2x = font_add_sprite_ext(spr_font_2x,mapstr,1,1);
global.fontshadow = font_add_sprite_ext(spr_font_shadow,mapstr,1,1);
global.fontshadow2x = font_add_sprite_ext(spr_font_shadow_2x,mapstr,1,1);

global.points = 0;
global.hipoints = 0;


global.pauseState=0;
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


//darkness shader
darkness=instance_create_depth(0,0,0,obj_darkness);


//randomize(); //questa funzione serve solo per quando si lavora
//             //per smuovere il seed

////creazione eroe
//hero = instance_create_depth(random(room_width),random(room_height),0,obj_hero); //ho messo sulla x e sulla y
////creazione bg
//bg = instance_create_depth(0,0,0,obj_bg);

////un valore random le room
////le proprieta di gamemaker sono VERDI

////CREAZIONE ZOMBIE
//repeat(10)
//{
//	//irandom invece da il valore arrotondato
//	instance_create_depth(random_range(32,room_width-32),random_range(32,room_height-32),0,obj_dummy);
//}
