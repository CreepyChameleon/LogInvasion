turn = argument0;
var enemy = obj_movetile;
show_debug_message("scr_ai_init");

turn += 1;
list = scr_enemyTurn(turn);

enemy.moving = list[0];
enemy.movex = true;
enemy.dir = list[1];
enemy.instancenum = list[2];
