move_timer += 1;
if obj_player.playerturn == 0 and enemyturn == 0
{
	move_timer = 0;
	scr_ai_init(enemyturn);
}

if enemyturn == 1 
{
	var instance = 100002;
	if instance_exists(instance)
	{
		if moving > 0
		{
			instance.image_speed = 1;
		}
		if dir == 1 then instance.image_xscale = 1;
		if dir == -1 then instance.image_xscale = -1;
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
			instance.image_speed = 0;
			scr_ai_init(enemyturn);
		}
	}
	else enemyturn += 1;
}

if enemyturn == 2 
{
	if (move_timer >= 60 and move_timer < 120) {
	var instance = 100003;
	if instance_exists(instance)
	{
		if moving > 0
		{
			instance.image_speed = 1;
		}
		if dir == 1 then instance.image_xscale = 1;
		if dir == -1 then instance.image_xscale = -1;
		if moving > 0 and movex = true
		{
			moving -= 1;
			instance.image_speed = 1;
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
			instance.image_speed = 0;
			scr_ai_init(enemyturn);
		}	
	}	
	else enemyturn += 1;
}
}
if enemyturn == 3
{
	if (move_timer >= 60 and move_timer < 120) {
	var instance = 100004;
	if instance_exists(instance)
	{
		if moving > 0
		{
			instance.image_speed = 1;
		}
		if dir == 1 then instance.image_xscale = 1;
		if dir == -1 then instance.image_xscale = -1;
		if moving > 0 and movex = true
		{
			moving -= 1;
			instance.image_speed = 1;
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
			instance.image_speed = 0;
			scr_ai_init(enemyturn);
		}	
	}
	else enemyturn += 1;
}
}
if enemyturn == 4
{
	if (move_timer >= 60 and move_timer < 120) {
	var instance = 100005;
	if instance_exists(instance)
	{
		if moving > 0
		{
			instance.image_speed = 1;
		}
		if dir == 1 then instance.image_xscale = 1;
		if dir == -1 then instance.image_xscale = -1;		
		if moving > 0 and movex = true
		{
			moving -= 1;
			instance.image_speed = 1;
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
			instance.image_speed = 0;
			scr_ai_init(enemyturn);
		}	
	}
	else enemyturn += 1;
}
}
if enemyturn == 5
{
		if (move_timer >= 60 and move_timer < 120) {
	var instance = 100006;
	if instance_exists(instance)
	{
		if moving > 0
		{
			instance.image_speed = 1;
		}
		if dir == 1 then instance.image_xscale = 1;
		if dir == -1 then instance.image_xscale = -1;		
		if moving > 0 and movex = true
		{
			moving -= 1;
			instance.image_speed = 1;
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
			instance.image_speed = 0;
			scr_ai_init(enemyturn);
		}	
	}
	else enemyturn += 1;
}
}
if enemyturn == 6
{
		if (move_timer >= 60 and move_timer < 120) {
	var instance = 100007;
	if instance_exists(instance)
	{
		if moving > 0
		{
			instance.image_speed = 1;
		}
		if dir == 1 then instance.image_xscale = 1;
		if dir == -1 then instance.image_xscale = -1;		
		if moving > 0 and movex = true
		{
			moving -= 1;
			instance.image_speed = 1;
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
			instance.image_speed = 0;
			obj_player.playerturn = 1;
			enemyturn = 0;
			move_timer = 0;
		}
	}
	else enemyturn = 0;
}
}
