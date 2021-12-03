/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
health_ -= 1;
objPlayerOne.score_ += 5

if health_ <= 0 {
	image_index = 0;
	image_speed = 0.7;
	sprite_index = sprBotDie;
	scr_wait(1, 0);
}