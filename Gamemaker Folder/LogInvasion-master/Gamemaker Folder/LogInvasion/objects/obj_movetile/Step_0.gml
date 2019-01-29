if obj_player.playerturn == 0 //and enemyturn == 1
{
	if alarm[0] == -1 and enemygo = true {
alarm[0]=100;
	}
	if keyboard_check_pressed(vk_space)
	{	//show_debug_message(inst[0]);
		inst = scr_enemyTurn(100002);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
	}

	
	/*for (i = 0;i < array_length_1d(enemy);i += 1)
	{
		inst = scr_enemyTurn(enemy[i]);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
	}
	*/
	
	
}



if moving > 0 and movex == 1{
moving -= 6;
instance.x += 2*dir
}

if moving <= 0{
movex = 0;
moving = 0;
}