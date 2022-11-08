function scr_enemyUpdateSpawn() {
	crono--;
	if(crono <= 0)
	{
		scr_enemySetState(EnemyState.Idle);
	}


}
