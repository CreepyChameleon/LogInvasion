if obj_player.playerturn == 0 //and enemyturn == 1
{
	var i;
	for (i = 0; i < instance_number(obj_movetile); i += 1)
	{
		enemy[i] = instance_find(obj_movetile,i);
		
	
		//inst = scr_enemyTurn(i);
	
	}

	if keyboard_check_pressed(vk_space)
	{	//show_debug_message(inst[0]);
		inst = scr_enemyTurn(100002);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
	}
	
	
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