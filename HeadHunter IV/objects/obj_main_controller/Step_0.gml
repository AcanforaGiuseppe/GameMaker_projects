/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape))
{
	game_end();
}
//per le lettere non ce il vk, per inserirle faccio ord("A")
if(keyboard_check_pressed(ord("R")))
{
	game_restart();
}

if(keyboard_check_pressed(ord("E")))
{
	if(global.pauseState==0)
	{
		global.pauseState=1;
		instance_create_depth(0,0,0,obj_pause);
	}

}
	