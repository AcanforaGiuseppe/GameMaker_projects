/// @description Insert description here
// You can write your code in this editor
depth = -y;

switch(state)
{
	case HeroState.Idle:
	scr_heroUpdateIdle();
	break;
	case HeroState.Attack:
	scr_heroUpdateAttack();
	break;
	case HeroState.Die:
	scr_heroUpdateDie();
	break;
	case HeroState.Dead:
	scr_heroUpdateDead();
	break;
}

x = clamp(x,0,room_width);
y = clamp(y,0,room_height);