// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_assignPoints(argument0) {
	var pointsToAssign = argument0;
	global.points += pointsToAssign;
	if(global.points > global.hipoints)
	{
		global.hipoints = global.points;
		var map = ds_map_create();
		ds_map_add(map,"hipoints",global.hipoints);
		ds_map_secure_save(map,"saveaivrm.dat");
		ds_map_destroy(map);
	}

	/*
	var lista = ds_list_create();
	ds_list_add(lista,"ciao");
	ds_list_size(lista);
	ds_list_find_value(lista,0);//ciao
	ds_list_find_index(lista,"ciao");//0
	ds_list_destroy(lista);
	for(var i = 0; i < ds_list_size(lista); i++)
	{
		show_debug_message(string(ds_list_find_value(lista,i)));
	}

	var mappa = ds_map_create();
	ds_map_add(mappa,"nome","Diego");
	ds_map_find_value(mappa,"nome");
	ds_map_destroy(mappa);

	var k = ds_map_find_first(mappa);
	repeat(ds_map_size(mappa))
	{
		var v = ds_map_find_value(mappa,k);
		show_debug_message(string(k)+":"+string(v));
		k = ds_map_find_next(mappa,k);
	}

	var grid = ds_grid_create(32,32);
	ds_grid_get(grid,0,0);
	ds_grid_set(grid,0,0,obj_hero);
	ds_grid_set_disk(grid,15,15,3,5);
	ds_grid_set_region(grid,0,0,31,31,-1);
	ds_grid_clear(grid,-1);
	ds_grid_destroy(grid);
	*/




}
