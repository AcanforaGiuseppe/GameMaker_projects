/// @description Insert description here
// You can write your code in this editor
state = EnemyState.Spawn;

walkRange = 24;
walkSpeed = 0.5;

targetx = -1;
targety = -1;

waitTimer = 60;
waitCrono = 1;


spawnTimer = 60;
dieTimer = 60;
chargeTimer = 30;

crono = spawnTimer;

image_xscale = choose(-1,1);

repeat(20)
{
	var cloudlet = instance_create_depth(x+random_range(-6,6),y-random(16),-(y+1),obj_fx_cloudlet);
	cloudlet.speed = random_range(1,2);
	cloudlet.direction = 90+random_range(-5,5);
	cloudlet.increment = 0.95;
}
