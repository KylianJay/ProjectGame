/// @description Collision and Moving and Animation
// Look for player and follow it
if !instance_exists(objPlayerOne) {
	image_index = 0;
	image_speed = .7;
	sprite_index = sprBotDie;
	scr_wait(1, 0)
}

var dir = point_direction(x, y, objPlayerOne.x, objPlayerOne.y);
hspeed_ = lengthdir_x(speed_, dir);
vspeed_ = lengthdir_y(speed_, dir);

//Collision Detection Which Is Broken But Also Not
if place_meeting(x+hspeed_, y, objGround) {
	while !place_meeting(x+sign(hspeed_), y, objGround) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;

if place_meeting(x, y+vspeed_, objGround) {
	while !place_meeting(x, y+sign(vspeed_), objGround) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;

	if place_meeting(x+hspeed_push, y, objGround) {
		while !place_meeting(x+sign(hspeed_push), y, objGround) {
			x += sign(hspeed_push);
		}
		hspeed_push = 0;
	}
	x += hspeed_push;

	if place_meeting(x, y+vspeed_push, objGround) {
		while !place_meeting(x, y+sign(vspeed_push), objGround) {
			y += sign(vspeed_push);
		}
		vspeed_push = 0;
	}
	y += vspeed_push;


// If not colliding then reset push speed
	if !place_meeting(x, y, objBoss) {
		hspeed_push = lerp(hspeed_push, 0, .1);
		vspeed_push = lerp(vspeed_push, 0, .1);
	}