/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objBoss)){
	if objBoss.health_ <= 25 {
		image_alpha = 1;
	} else {
		image_alpha = 0;
	}
image_index = objBoss.health_;
x = objBoss.x-30;
y = objBoss.y-50;

}else{

instance_destroy();

}