//need to eventually compare instance position to player position, 
turn = argument0;
randomize();
eninst = instance_find(obj_movetile,(turn-1));
obj_movetile.enemyturn += 1;

	if eninst.x > obj_player.x //enemy to the right of the player
	{
		if (eninst.x - obj_player.x) >= 120 and place_empty(x+120,y) //if 2 tiles or more to right
		{
			var randmove;
			randmove = choose(1,2);
			enemymoving = 10 * randmove;
			enemydir = -1;
			movex = true;
			movey = false;
			
			//return [moving, dir, eninst, movex, movey];
		}
	
		if not place_empty(x+120,y) {  //tile to the left is not open
			enemymoving = 10;
			enemydir = choose(-1,1)
			movex = false;
			movey = true;
			//return [moving, dir, eninst, movex, movey];
		
		}
	}
		if (eninst.x - obj_player.x) <= 30 and (eninst.x - obj_player.x) >= -30
		{
			if (eninst.y - obj_player.x) < 0 {
			enemymoving = 10;
			enemydir = 1;
			movex = false
			movey = true
			//return [moving, dir, eninst, movex, movey];
			}
			if (eninst.y - obj_player.x) > 0 {
			enemymoving = 10;
			enemydir = -1;
			movex = false
			movey = true
			//return [moving, dir, eninst, movex, movey];
			}
		}
	
	


	if eninst.x < obj_player.x //enemy to the left of the player
	{
		enemydir = 1;
		enemymoving = 10;
		movex = true
		movey = false
		//return [moving, dir, instance, movex, movey];
	}

	if eninst.x == obj_player.x
	{
		show_debug_message("wow");
	}
	//instance_position( x, y, obj );