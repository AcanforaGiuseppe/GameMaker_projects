// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_heroSetState(argument0) {

	
	var desiredState = argument0;
	if(desiredState != state)
	{
		state = desiredState;
		switch(state)
		{
			case HeroState.Idle:
		
			break;
			case HeroState.Attack:
			speed = 10;
			sprite_index = spr_hero_attack;
			break;
			case HeroState.Die:
			speed = 0;
			sprite_index = spr_hero_die;
			var head = instance_create_depth(x,y,depth-1,obj_head);
			head.image_xscale = image_xscale;
			head.sprite_index = spr_hero_head;
			crono = dieTimer;
			break;
			case HeroState.Dead:
			sprite_index = spr_hero_dead;
			break;
		}
	}


}
