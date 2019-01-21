/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DEC7E6B
/// @DnDArgument : "code" "instance.__dnd_health -= 50 * damageMutiplier;$(13_10)if instance.__dnd_health <= 0$(13_10){$(13_10)	instance_destroy(instance);$(13_10)	supercharge += 20;$(13_10)}$(13_10)damageMutiplier = 1;"
instance.__dnd_health -= 50 * damageMutiplier;
if instance.__dnd_health <= 0
{
	instance_destroy(instance);
	supercharge += 20;
}
damageMutiplier = 1;