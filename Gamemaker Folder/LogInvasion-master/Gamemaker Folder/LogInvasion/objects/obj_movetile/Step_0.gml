if obj_player.playerturn == 0 //and enemyturn == 1
{
<<<<<<< HEAD
	if alarm[0] == -1 and enemygo = true {
alarm[0]=100;
=======
	var i;
	for (i = 0; i < instance_number(obj_movetile); i += 1)
	{
		enemy[i] = instance_find(obj_movetile,i);
		
	
		//inst = scr_enemyTurn(i);
	
>>>>>>> parent of e445379... __
	}
	if keyboard_check_pressed(vk_space)
	{	//show_debug_message(inst[0]);
		inst = scr_enemyTurn(100002);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
	}

	
<<<<<<< HEAD
	/*for (i = 0;i < array_length_1d(enemy);i += 1)
	{
		inst = scr_enemyTurn(enemy[i]);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
	}
	*/
	
=======
>>>>>>> parent of e445379... __
	
}
show_debug_message(inst);


if moving > 0 and movex == 1{
moving -= 6;
instance.x += 2*dir
}

if moving <= 0{
movex = 0;
moving = 0;
}