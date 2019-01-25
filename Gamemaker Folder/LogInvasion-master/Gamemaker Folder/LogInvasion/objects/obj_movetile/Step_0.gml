if obj_player.playerturn == 0 //and enemyturn == 1
{
	ds_list_clear(instanceList);
	var i;
	for (i = 0; i < instance_number(obj_movetile); i += 1)
	{
	enemy[i] = instance_find(obj_movetile,i);
	   }
	show_debug_message(enemy);
	
	if keyboard_check_pressed(vk_control) then scr_enemyTurn(100002);
}