// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_heroUpdateAttack() {

	instance_create_depth(x+random_range(-4,4),y,depth-1,obj_fx_cloudlet);
	speed *= 0.9;
	with(obj_enemy)
	{
		var dist = point_distance(other.x,other.y,x,y);
		if(dist < 8 && state < EnemyState.Die)
		{
			scr_enemySetState(EnemyState.Die);
		}
	}
	if(speed < 0.1)
	{
		scr_heroSetState(HeroState.Idle);
	}


}