/// @description Insert description here
// You can write your code in this editor
depth = -y;
switch(state)
{
	case EnemyState.Spawn:
	scr_enemyUpdateSpawn();
	break;
	case EnemyState.Idle:
	scr_enemyUpdateIdle();
	break;
	case EnemyState.Charge:
	scr_enemyUpdateCharge();
	break;
	case EnemyState.Attack:
	if(attackType==AttackType.Melee)
	{
		scr_enemyUpdateAttack();
	}
	else
	{
		scr_enemyUpdateAttackRanged();
	}
	break;
	case EnemyState.Die:
	scr_enemyUpdateDie();
	break;
	case EnemyState.Dead:
	scr_enemyUpdateDead();
	break;
}