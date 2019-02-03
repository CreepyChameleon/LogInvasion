if obj_player.playerturn == 0 and enemyturn == 0
{
	scr_ai_init(enemyturn);
}

if enemyturn == 1
{
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
		enemyturn = 0;
		obj_player.playerturn = 1;
	}	
}