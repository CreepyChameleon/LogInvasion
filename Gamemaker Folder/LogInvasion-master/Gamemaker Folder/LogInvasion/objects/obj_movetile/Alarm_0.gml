/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46F2BC59
/// @DnDArgument : "code" "	globalvar i;$(13_10)	for (i = 0; i < instance_number(obj_movetile); i += 1)$(13_10)	{$(13_10)		enemy[i] = instance_find(obj_movetile,i);$(13_10)	/*	inst = scr_enemyTurn(a);$(13_10)		moving = inst[1];$(13_10)		dir = inst[2]$(13_10)		movex = inst[3];$(13_10)		instance = inst[0];$(13_10)		alarm[1] = 100;$(13_10)		show_debug_message(enemy[i])$(13_10)		*/$(13_10)	}$(13_10)enemygo = false;$(13_10)		inst = scr_enemyTurn(100002);$(13_10)		moving = inst[1];$(13_10)		dir = inst[2]$(13_10)		movex = inst[3];$(13_10)		instance = inst[0];$(13_10)		alarm[1] = 100;"
	globalvar i;
	for (i = 0; i < instance_number(obj_movetile); i += 1)
	{
		enemy[i] = instance_find(obj_movetile,i);
	/*	inst = scr_enemyTurn(a);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
		alarm[1] = 100;
		show_debug_message(enemy[i])
		*/
	}
enemygo = false;
		inst = scr_enemyTurn(100002);
		moving = inst[1];
		dir = inst[2]
		movex = inst[3];
		instance = inst[0];
		alarm[1] = 100;/**/