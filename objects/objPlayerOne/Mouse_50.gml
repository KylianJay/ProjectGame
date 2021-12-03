/// @description Fire gun and spawn bullet
if alarm[0] <= 0 {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var flipped = (mouse_x > x)*2-1;
	var gun_x = x-4*flipped;

	var bullet = instance_create_layer(gun_x, y, "PlayerInstances", objGunBullet);
	bullet.direction = dir;
	alarm[0] = bullet_cooldown_;
}