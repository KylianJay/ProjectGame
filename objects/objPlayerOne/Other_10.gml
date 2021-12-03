/// @description Movement State
/// @description Player Movement - Scale - Collision
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);


if place_meeting(x+hspeed_, y, objGround) {
	while !place_meeting(x+sign(hspeed_), y, objGround) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}

if place_meeting(x, y+vspeed_, objGround) {
	while !place_meeting(x, y+sign(vspeed_), objGround) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}

// Player Death
if health_ <= 0 {
	state_ = DIE_
}


// Movement
if (hInput != 0 or vInput != 0){
	dir = point_direction(0, 0, hInput, vInput);
	hspeed_ = lengthdir_x(speed_, dir);
	vspeed_ = lengthdir_y(speed_, dir);
	image_speed = 1.1;
	
	if place_meeting(x+hspeed_, y, objGround) {
		while !place_meeting(x+sign(hspeed_), y, objGround) {
			x += sign(hspeed_);
		}
		hspeed_ = 0;
	}

	if place_meeting(x, y+vspeed_, objGround) {
		while !place_meeting(x, y+sign(vspeed_), objGround) {
			y += sign(vspeed_);
		}
		vspeed_ = 0;
	}
	
	x += hspeed_;
	y += vspeed_;

	
	//Set Sprite
	switch (dir) {
		case 0: sprite_index = playerOneRun;  break;
		case 45: sprite_index = playerOneRun;  break;
		case 90: sprite_index = playerOneRun;  break;
		case 135: sprite_index = playerOneRun; image_xscale = -1;  break;
		case 180: sprite_index = playerOneRun; image_xscale = -1;  break;
		case 225: sprite_index = playerOneRun; image_xscale = -1;  break;
		case 270: sprite_index = playerOneRun;  break;
		case 315: sprite_index = playerOneRun;  break;
	}
} else {
	image_index = 0;
}

//Normal Scale
xscale_ = lerp(xscale_, image_xscale, .1);
yscale_ = lerp(yscale_, image_yscale, .1);