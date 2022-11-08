// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_heroUpdateDie() {
	crono --;
	repeat(2)
	{
		instance_create_depth(x,y,depth-1,obj_fx_blood);
	}
	if(crono <= 0)
	{
		scr_heroSetState(HeroState.Dead);
	}


}