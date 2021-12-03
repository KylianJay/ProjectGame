/// @description Hit State
//Collision Push Detection Which Is Broken But Also Not
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
hspeed_push = lerp(hspeed_push, 0, .1);
vspeed_push = lerp(vspeed_push, 0, .1);

//get out of hit state
if point_distance(0, 0, hspeed_push, vspeed_push) < 1 {
	state_ = MOVEMENT_;
}
