// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemySetState(argument0) {
	var desiredState = argument0;
	if(desiredState != state)
	{
		state = desiredState;
		switch(state)
		{
			case EnemyState.Spawn:
		
			break;
			case EnemyState.Idle:
			sprite_index = spr_idle;
			waitCrono = waitTimer + irandom(waitTimer);
			break;
			case EnemyState.Charge:
			var hero = instance_find(obj_hero,0);
			if(hero != noone)
			{
				if(hero.x > x)
				{
					image_xscale = 1;
				}
				else
				{
					image_xscale = -1;
				}
			}
			crono = chargeTimer;
			sprite_index = spr_charge;
			break;
			case EnemyState.Attack:
			var hero = instance_find(obj_hero,0);
			if(hero != noone)
			{
				if(hero.x > x)
				{
					image_xscale = 1;
				}
				else
				{
					image_xscale = -1;
				}
				direction = point_direction(x,y,hero.x,hero.y);
			}
			sprite_index = spr_attack;
			if(attackType == AttackType.Melee)
			{
				speed = dashForce;
			}
			else
			{
				crono = attackTimer;
				event_perform(ev_other, ev_user0); //SHOOT	
			}
			break;
			case EnemyState.Die:
			speed = 0;
			scr_assignPoints(assignedPoints);
			sprite_index = spr_die;
			var head = instance_create_depth(x,y,depth-1,obj_head);
			head.image_xscale = image_xscale;
			head.sprite_index = spr_head;
			crono = dieTimer;
			break;
			case EnemyState.Dead:
			var corpse = instance_create_depth(x,y,depth,obj_corpse);
			corpse.image_xscale = image_xscale;
			corpse.sprite_index = spr_dead;
			instance_destroy();
			break;
		
		}
	}


}