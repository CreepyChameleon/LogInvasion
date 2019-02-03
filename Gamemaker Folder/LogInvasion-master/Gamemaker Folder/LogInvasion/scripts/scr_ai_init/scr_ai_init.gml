turn = argument0;
var enemy = obj_movetile;
show_debug_message("scr_ai_init");

turn += 1;
list = scr_enemyTurn(turn);

enemy.moving = list[0];
enemy.dir = list[1];
enemy.instancenum = list[2];
enemy.movex = list[3];
enemy.movey = list[4];