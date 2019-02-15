draw_self();

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -50, y + 70, x + 59, y + 80, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));