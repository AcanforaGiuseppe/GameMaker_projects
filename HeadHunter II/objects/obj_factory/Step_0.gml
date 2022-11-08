/// @description Insert description here
// You can write your code in this editor
if(factoryState == 0)
{
	exit;
}

if(instance_number(obj_enemy) == 0)
{
	if(global.totEnemies > 0)
	{
		repeat(global.totEnemiesToSpawn)
		{
			instance_create_depth(random(room_width),random(room_height),0,obj_enemy);
			global.totEnemies--;
		}
	}
	else
	{
		global.level ++;
		global.totEnemies = global.level*5;
		global.totEnemiesToSpawn = global.level;
	}
}