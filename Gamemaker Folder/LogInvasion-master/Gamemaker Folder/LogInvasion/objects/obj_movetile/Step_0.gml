if obj_player.playerturn == 0 and enemyturn == 0
{
	scr_ai_init(enemyturn);
}

if enemyturn == 1
{
	show_debug_message("in move")
	instance = 100002;
	if moving > 0 and movex = true
	{
		moving -= 1;
		instance.x += 2*dir;
	}
	if moving > 0 and movey = true
	{
		moving -= 1;
		instance.y += 2*dir;
	}

	if moving <= 0
	{
		movex = false;
		movey = false;
		scr_ai_init(enemyturn);
	}	
}

if enemyturn == 2
{
	show_debug_message("in move")
	instance = 100003;
	if moving > 0 and movex = true
	{
		moving -= 1;
		instance.x += 2*dir;
	}
	if moving > 0 and movey = true
	{
		moving -= 1;
		instance.y += 2*dir;
	}

	if moving <= 0
	{
		movex = false;
		movey = false;
		scr_ai_init(enemyturn);
	}	
}
if enemyturn == 3
{
	show_debug_message("in move")
	instance = 100004;
	if moving > 0 and movex = true
	{
		moving -= 1;
		instance.x += 2*dir;
	}
	if moving > 0 and movey = true
	{
		moving -= 1;
		instance.y += 2*dir;
	}

	if moving <= 0
	{
		movex = false;
		movey = false;
		scr_ai_init(enemyturn);
	}	
}
if enemyturn == 4
{
	show_debug_message("in move")
	instance = 100005;
	if moving > 0 and movex = true
	{
		moving -= 1;
		instance.x += 2*dir;
	}
	if moving > 0 and movey = true
	{
		moving -= 1;
		instance.y += 2*dir;
	}

	if moving <= 0
	{
		movex = false;
		movey = false;
		scr_ai_init(enemyturn);
	}	
}
if enemyturn == 5
{
	show_debug_message("in move")
	instance = 100006;
	if moving > 0 and movex = true
	{
		moving -= 1;
		instance.x += 2*dir;
	}
	if moving > 0 and movey = true
	{
		moving -= 1;
		instance.y += 2*dir;
	}

	if moving <= 0
	{
		movex = false;
		movey = false;
		scr_ai_init(enemyturn);
	}	
}
if enemyturn == 6
{
	show_debug_message("in move")
	instance = 100007;
	if moving > 0 and movex = true
	{
		moving -= 1;
		instance.x += 2*dir;
	}
		if moving > 0 and movey = true
	{
		moving -= 1;
		instance.y += 2*dir;
	}


	if moving <= 0
	{
		movex = false;
		movey = false;
		obj_player.playerturn = 1;
		enemyturn = 0;
	}	
}