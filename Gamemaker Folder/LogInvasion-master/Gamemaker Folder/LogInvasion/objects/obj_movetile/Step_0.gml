if obj_player.playerturn == 0 //and enemyturn == 1
{
	ds_list_clear(instanceList);
	var i;
	for (i = 0; i < instance_number(obj_movetile); i += 1)
	{
	enemy[i] = instance_find(obj_movetile,i);
	   }
	//show_debug_message(enemy);
	
	if keyboard_check_pressed(vk_control) then scr_enemyTurn(100002);
}

show_debug_message(inst[0]);

if inst[1] > 0 and inst[3] = true
{
inst[1] -= 1
inst[0].x += 2*inst[2]
image_speed = 1;
}