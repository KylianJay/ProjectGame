
function scr_minimap(argument0, argument1, argument2){
	var _x, _y, _s;
	_x = argument0;
	_y = argument1;
	_s = argument2;

	draw_rectangle_color(_x,_y,_x+room_width/_s,_y+room_height/_s,c_white,c_white,c_white,c_white,1);  //Draws the minimap

	with (objGround)
	{
	draw_set_color(c_white); //Color of the object on the minimap
	draw_rectangle(_x+x/_s-sprite_width/(2*_s),_y+y/_s-sprite_height/(2*_s),_x+x/_s+sprite_width/(2*_s),_y+y/_s+sprite_height/(2*_s),0); //_s means size. Do not edit out sprite_width and sprite_height!

	sprite_collision_mask(-1,true,0,-1,-1,-1,-1,0,0);  //This will make your objects dragable so you won't need to alt + click the objects one by one

	//This gives the minimap a fog
	if distance_to_object(objPlayerOne) < 1200
		{
			draw_set_alpha(1);
		}
	else
		{
			draw_set_alpha(0);
		}
	
	}

	//This could be an item on the minimap
	with (objBot)
	{
	draw_set_color(c_yellow);
	draw_rectangle(_x+x/_s-sprite_width/(2*_s),_y+y/_s-sprite_width/(2*_s),_x+x/_s+sprite_width/(2*_s),_y+y/_s+sprite_width/(2*_s),0);
	}
	
	
	//This is the player
	with (objPlayerOne)
	{
	draw_set_alpha(1);
	draw_set_color(c_aqua);
	draw_circle(_x+x/_s-sprite_width/(2*_s),_y+y/_s-sprite_width/(2*_s),4,0);
	}
}