/// @description Create Variables
// You can write your code in this editor

// initialize variables
speed_ = 4;
hspeed_ = 0;
vspeed_ = 0;
image_speed = 2;
max_health = 10;
health_ = max_health;
score_ = 0;
responses = ["Test Response", "Test Response Two"]
responseSelected = 0;	

MOVEMENT_ = 0;
HIT_ = 1;
DIE_ = 2;
IDLE_ = 3;
PlayerStateLocked = 4;

state_ = MOVEMENT_
image_alpha_ = 1;
lastState = state_;


//Map Keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

//Bullet Cooldown
bullet_cooldown_ = room_speed/5;
alarm[0] = bullet_cooldown_;

//Scale Variable
xscale_ = image_xscale;
yscale_ = image_yscale;

// Hide Collision Instances
var solid_layer = layer_get_id("CollisionInstances");
layer_set_visible(solid_layer, debug_mode);