/// @description Insert description here
// You can write your code in this editor
show_debug_message("hello world");
randomize();

global.limit = 32;

enum HeroState 
{
	Idle,
	Attack
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

floorsurf = instance_create_depth(0,0,0,obj_floorSurface);
//bg
hero = instance_create_depth(0,0,0,obj_hero);


//camera
//factory
factory = instance_create_depth(0,0,0,obj_factory);
factory.factoryState = 1;
//gui

