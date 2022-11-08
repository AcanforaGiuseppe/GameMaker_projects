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
		}
	}


}
