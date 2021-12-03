/// @description Take Damage
health_ -= 1;
objPlayerOne.score_ += 10;
instance_destroy(other);
state_ = HIT_;
var dir = other.direction;
hspeed_push = lengthdir_x(8, dir);
vspeed_push = lengthdir_y(8, dir);