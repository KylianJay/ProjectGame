/// @description Death State
image_alpha_ = 0;
audio_play_sound(sndPlayerDeath, 1, false);
instance_create_layer(objPlayerOne.x, objPlayerOne.y, "PlayerInstances", objPlayerOneDie);
scr_wait(1, 1);
state_ = IDLE_;