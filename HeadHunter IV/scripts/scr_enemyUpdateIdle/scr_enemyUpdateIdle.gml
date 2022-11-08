// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyUpdateIdle() {
	if(waitCrono > 0)
	{
		waitCrono --;
		if(waitCrono <= 0)
		{
			do
			{
				targetx = x + random_range(-walkRange,walkRange);
				targety = y + random_range(-walkRange,walkRange);
			}until(targetx >= 0 && targetx <= room_width && targety >= 0 && targety <= room_height);
		
			sprite_index = spr_walk;
			if(targetx > x)
			{
				image_xscale = 1;
			}
			else
			{
				image_xscale = -1;
			}
		}
	}
	else
	{
		var dist = point_distance(x,y,targetx,targety);
		var dir = point_direction(x,y,targetx,targety);
		if(dist > 0)
		{
			var s = walkSpeed;
			if(dist < s)
			{
				s = dist;
			}
			x += dcos(dir)*s;
			y -= dsin(dir)*s;
		}
		else
		{
			waitCrono = waitTimer;
			sprite_index = spr_idle;
		}
	}
	var hero = instance_find(obj_hero,0);
	if(hero != noone)
	{
		var distToHero = point_distance(x,y,hero.x,hero.y);
		if(distToHero < chargeRadius && hero.state < HeroState.Die)
		{
			if(attackType==AttackType.Melee)
			{
			scr_enemySetState(EnemyState.Charge);
			}
			else
			{
				if(waitCrono<=0)
				{
					scr_enemySetState(EnemyState.Charge);
				}
			}	
		}
	}



}