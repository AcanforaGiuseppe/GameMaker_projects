function scr_enemyUpdateCharge() {
	crono --;
	if(crono <= 0)
	{
		var hero = instance_find(obj_hero,0);
		if(hero != noone && hero.state < HeroState.Die)
		{
			scr_enemySetState(EnemyState.Attack);
		}
		else
		{
			scr_enemySetState(EnemyState.Idle);
		}
	}


}
