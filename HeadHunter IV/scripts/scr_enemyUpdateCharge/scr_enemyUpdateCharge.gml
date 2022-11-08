// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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