/// @description Draw the Player - gun - score
// You can write your code in this editor
var flipped = (mouse_x > x)*2-1;
var dir = point_direction(x, y, mouse_x, mouse_y);
var gun_x = x-4*flipped;

draw_text(10, 10, score_);

draw_sprite_ext(playerOneRun, image_index, x, y, flipped, yscale_, 0, image_blend, image_alpha_);

draw_sprite_ext(gunPlayer, 0, gun_x, y, 1, flipped, dir, image_blend, image_alpha);