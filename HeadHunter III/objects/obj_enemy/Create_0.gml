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

assignedPoints = 50;

crono = spawnTimer;

chargeRadius = 24;
dashForce = 4;

attackType = AttackType.Melee;

spr_idle = spr_zombie_idle;
spr_walk = spr_zombie_walk;
spr_charge = spr_zombie_charge;
spr_attack = spr_zombie_attack;
spr_die = spr_zombie_die;
spr_dead = spr_zombie_dead;
spr_head = spr_zombie_head;

image_xscale = choose(-1,1);

repeat(20)
{
	var cloudlet = instance_create_depth(x+random_range(-6,6),y-random(16),-(y+1),obj_fx_cloudlet);
	cloudlet.speed = random_range(1,2);
	cloudlet.direction = 90+random_range(-5,5);
	cloudlet.increment = 0.95;
}
