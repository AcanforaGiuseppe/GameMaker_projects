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
		
			break;
			case EnemyState.Charge:
		
			break;
			case EnemyState.Attack:
		
			break;
			case EnemyState.Die:
			sprite_index = spr_zombie_die;
			var head = instance_create_depth(x,y,depth-1,obj_head);
			head.image_xscale = image_xscale;
			crono = dieTimer;
			break;
			case EnemyState.Dead:
			var corpse = instance_create_depth(x,y,depth,obj_corpse);
			corpse.image_xscale = image_xscale;
			instance_destroy();
			break;
		
		}
	}


}
