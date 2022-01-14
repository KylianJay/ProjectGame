/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
health_ -= 1;
objPlayerOne.score_ += 5
objPlayerOne.enemiesKilled += 1;

if health_ <= 0 {
	if objPlayerOne.currentRoom = 1 {
		instance_create_layer(other.x, other.y, "EnemyInstances", objBotDeath);
		instance_destroy();
	} else {
		
	instance_create_layer(other.x, other.y, "Instances", objBotDeath);
	instance_destroy();
	}
}