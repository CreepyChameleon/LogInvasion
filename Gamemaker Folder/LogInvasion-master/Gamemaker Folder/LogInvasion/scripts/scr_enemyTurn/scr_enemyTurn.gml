//need to eventually compare instance position to player position, 
turn = argument0;
randomize();
eninst = instance_find(obj_movetile,(turn-1));
obj_movetile.enemyturn += 1;
obj_movetile.move_timer = 0;

if eninst.x > obj_player.x //enemy to right of player
{
	show_debug_message("enemy to the right of player");
	if (eninst.x - obj_player.x) == 160 //one tile to the right
	{
		show_debug_message("one tile to the right of player");
		if eninst.__dnd_health > 20 //enemy at a decent amount of health
		{
			show_debug_message("health greater than 20");
			var weighted_choice = round(random_range(1, 10));
			show_debug_message(weighted_choice);
			if weighted_choice == 1 or weighted_choice == 2 //less likely to run than move towards player
			{
				 show_debug_message("move right away from enemy");
			}
			if weighted_choice != 1 and weighted_choice != 2 // 8/10 chance to attack
			{
				show_debug_message("move left towards enemy");
			}
		}
		if eninst.__dnd_health < 20 //enemy at low health
		{
			show_debug_message("health less than 20");
			var weighted_choice = round(random_range(1, 10));
			show_debug_message(weighted_choice);
			if weighted_choice == 1 or weighted_choice == 2 or weighted_choice == 3 //more likely to run away from player than towards
			{
				 show_debug_message("move left towards enemy");
			}
			if weighted_choice != 1 and weighted_choice != 2 and weighted_choice != 3 // 7/10 chance to run
			{
				show_debug_message("move right away from enemy");
			}
		}
	}
	if (eninst.x - obj_player.x) == 320 //two tiles to the right
	{
		if eninst.__dnd_health > 20 //enemy at a decent amount of health
		{
			show_debug_message("health greater than 20");
			var weighted_choice = round(random_range(1, 10));
			show_debug_message(weighted_choice);
			if weighted_choice == 1  //less likely to run than move towards player
			{
				 show_debug_message("move right away from enemy");
			}
			if weighted_choice != 1 // 9/10 chance to attack
			{
				show_debug_message("move left towards enemy");
			}
		}
		if eninst.__dnd_health < 20 //enemy at low health
		{
			show_debug_message("health less than 20");
			var weighted_choice = round(random_range(1, 10));
			show_debug_message(weighted_choice);
			if weighted_choice == 1 or weighted_choice == 2 or weighted_choice == 3 or weighted_choice == 4 //more likely to run away from player than towards
			{
				 show_debug_message("move right away from enemy");
			}
			if weighted_choice != 1 and weighted_choice != 2 and weighted_choice != 3 and weighted_choice != 4 // 6/10 chance to run
			{
				show_debug_message("move left towards enemy");
			}
		}
	}
	if (eninst.x - obj_player.x) >= 480 //three or more tiles to the right
	{
	
	}
}
if eninst.x < obj_player.x
{
	show_debug_message("enemy to the left of player");	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/*	
	
	
	if eninst.x > obj_player.x //enemy to the right of the player
	{
		if (eninst.x - obj_player.x) >= 120 and place_empty(x+120,y) //if 2 tiles or more to right
		{
			var randmove;
			randmove = choose(1,2);
			enemymoving = (13 + (1/3)) * randmove;
			enemydir = -1;
			movex = true;
			movey = false;
			
			//return [moving, dir, eninst, movex, movey];
		}
	
		if not place_empty(x+120,y) {  //tile to the left is not open
			enemymoving = (13 + (1/3));
			enemydir = choose(-1,1)
			movex = false;
			movey = true;
			//return [moving, dir, eninst, movex, movey];
		
		}
	}
		if (eninst.x - obj_player.x) <= 30 and (eninst.x - obj_player.x) >= -30
		{
			if (eninst.y - obj_player.x) < 0 {
			enemymoving = (13 + (1/3));
			enemydir = 1;
			movex = false
			movey = true
			//return [moving, dir, eninst, movex, movey];
			}
			if (eninst.y - obj_player.x) > 0 {
			enemymoving = (13 + (1/3));
			enemydir = -1;
			movex = false
			movey = true
			//return [moving, dir, eninst, movex, movey];
			}
		}
	
	


	if eninst.x < obj_player.x //enemy to the left of the player
	{
		enemydir = 1;
		enemymoving = (13 + (1/3));
		movex = true
		movey = false
		//return [moving, dir, instance, movex, movey];
	}

	if eninst.x == obj_player.x
	{
		show_debug_message("wow");
	}
	//instance_position( x, y, obj );