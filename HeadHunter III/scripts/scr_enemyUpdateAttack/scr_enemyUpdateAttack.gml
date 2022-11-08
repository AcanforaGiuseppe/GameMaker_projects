function scr_enemyUpdateAttack() {
	speed *= 0.9;
	with(obj_hero)
	{
		var dist = point_distance(other.x,other.y,x,y);
		if(dist < 8)
		{
			if(state == HeroState.Attack)
			{
				with(other)
				{
					scr_enemySetState(EnemyState.Die);
				}
			}
			else if(state < HeroState.Die)
			{
				scr_heroSetState(HeroState.Die);
			}
		}
	}
	if(speed < 0.1)
	{
		speed = 0;
		scr_enemySetState(EnemyState.Idle);
	}


}
