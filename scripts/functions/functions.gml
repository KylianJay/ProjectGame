







function kill_yourself() {
	if instance_exists(objPlayerOne) {
		instance_destroy(objPlayerOne);
	}
	if instance_exists(objPlayerOneDie) {
		instance_destroy(objPlayerOneDie);
	}
}

function scr_wait(argument0, argument1) {
	alarm[argument1] = argument0 * room_speed;
}
