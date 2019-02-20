//need to eventually compare instance position to player position, 
turn = argument0;
randomize();
eninst = instance_find(obj_movetile,(turn-1));
obj_movetile.enemyturn += 1;
obj_movetile.move_timer = 0;

//place_empty();

if instance_exists(eninst)
{
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
				if weighted_choice == 1 or weighted_choice == 2 //more likely to move towards player
				{
					if !place_empty(eninst.x - 160, eninst.y)
					{
						show_debug_message("occupied");
					}
					show_debug_message("move right away from enemy");
					enemymoving = 14;
		  			enemydir = 1;
					movex = true;
					movey = false;	
				}	
				if weighted_choice != 1 and weighted_choice != 2 // 8/10 chance to attack
				{
					show_debug_message("move left towards enemy");
					enemymoving = 14;
		  			enemydir = -1;
					movex = true;
					movey = false;	
			
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
	 				enemymoving = 14;
	  				enemydir = -1;
					movex = true;
					movey = false;	
				}
				if weighted_choice != 1 and weighted_choice != 2 and weighted_choice != 3 // 7/10 chance to run
				{
					show_debug_message("move right away from enemy");
					enemymoving = 14;
	  				enemydir = 1;
					movex = true;
					movey = false;	
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
				if weighted_choice == 1  //more likely to move towards player
				{
					show_debug_message("move right away from enemy");
					var weighted_choice_2 = round(random_range(1,10));
					if weighted_choice_2 <= 4 //more likely to move two tiles
					{
						enemymoving = 14;
		  				enemydir = 1;
						movex = true;
						movey = false;	
					}
					if weighted_choice_2 > 4 // 6/10 chance to move two
					{
						enemymoving = 14 * 2;
		  				enemydir = 1;
						movex = true;
						movey = false;	
					}
				}
				if weighted_choice != 1 // 9/10 chance to attack
				{
					show_debug_message("move left towards enemy");
					var weighted_choice_2 = round(random_range(1,10));
					if weighted_choice_2 <= 2 //more likely to move two tiles
					{
						enemymoving = 14;
		  				enemydir = -1;
						movex = true;
						movey = false;	
					}
					if weighted_choice_2 > 2 // 8/10 chance to move two
					{
						enemymoving = 14 * 2;
		  				enemydir = -1;
						movex = true;
						movey = false;	
					}	
				}
			}
			if eninst.__dnd_health < 20 //enemy at low health
			{
				show_debug_message("health less than 20");
				var weighted_choice = round(random_range(1, 10));
				show_debug_message(weighted_choice);
				if weighted_choice == 1 or weighted_choice == 2 or weighted_choice == 3 or weighted_choice == 4 //more likely to run away from player than towards
				{
					show_debug_message("move left towards enemy");
					var weighted_choice_2 = round(random_range(1,10));
					if weighted_choice_2 <= 8 //less likely to move two tiles
					{
						enemymoving = 14;
		  				enemydir = -1;
						movex = true;
						movey = false;	
					}
					if weighted_choice_2 > 8 // 2/10 chance to move two
					{
						enemymoving = 14 * 2;
		  				enemydir = -1;
						movex = true;
						movey = false;	
					}	
				}
				if weighted_choice != 1 and weighted_choice != 2 and weighted_choice != 3 and weighted_choice != 4 // 6/10 chance to run
				{
					show_debug_message("move right away from enemy");
					var weighted_choice_2 = round(random_range(1,10));
					if weighted_choice_2 <= 2 //more likely to move two tiles
					{
						enemymoving = 14;
		  				enemydir = -1;
						movex = true;
						movey = false;	
					}
					if weighted_choice_2 > 2 // 8/10 chance to move two
					{
						enemymoving = 14 * 2;
		  				enemydir = -1;
						movex = true;
						movey = false;	
					}	
				}
			}
		}
		if (eninst.x - obj_player.x) == 480 //three or more tiles to the right
		{
			var weighted_choice = round(random_range(1, 20));
			show_debug_message(weighted_choice);
			if weighted_choice == 1 //more likely to move towards player
			{
				show_debug_message("move right away from enemy");
				enemymoving = 14;
				enemydir = 1;
				movex = true;
				movey = false;
			}
			if weighted_choice != 1 // 1/20 chance to run away
			{
				show_debug_message("move left towards enemy");
				enemymoving = 14;
				enemydir = -1;
				movex = true;
				movey = false;	
			}
		}
		if (eninst.x - obj_player.x) == 640 //if 4+ tiles to the right, not visible
		{
			show_debug_message("four tiles to the right, no movement");
			enemymoving = 0; //doesnt move at all
			enemydir = -1;
			movex = true;
			movey = false;
		}
	}
	if eninst.x < obj_player.x
	{
		show_debug_message("enemy to the left of player");	
	}
}		