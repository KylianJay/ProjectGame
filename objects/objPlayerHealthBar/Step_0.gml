/// @description Insert description here
if(instance_exists(objPlayerOne)){

image_index = objPlayerOne.health_;

}else{

instance_destroy();

}
x = camera_get_view_x(view_camera[1])+0;
y = camera_get_view_y(view_camera[1])+20;