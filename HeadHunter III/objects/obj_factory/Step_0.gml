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
			var enemyToSpawn = -1;
			switch(global.level)
			{
				case 1:
				enemyToSpawn = obj_zombie;
				break;
				case 2:
				enemyToSpawn = choose(obj_zombie,obj_zombie,obj_zombiered);
				break;
				case 3:
				enemyToSpawn = choose(obj_zombie,obj_zombiered);
				break;
				default:
				enemyToSpawn = obj_zombiered;
				break;
			}
			instance_create_depth(random(room_width),random(room_height),0,enemyToSpawn);
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