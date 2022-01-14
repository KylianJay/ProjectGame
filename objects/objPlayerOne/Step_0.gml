event_user(state_);

if enemiesKilled = 14 {
	if enemiesBossKilled = 1 {
		room_goto(roomL2J);
		currentRoom = 2;
	}
}

if enemiesKilled = 38 {
	if enemiesBossKilled = 2 {
		room_goto(roomL3);
		currentRoom = 3;
	}
}