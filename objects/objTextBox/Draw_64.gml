/// @description Insert description here
// You can write your code in this editor
var _arr = messages[|messageID];

var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

draw_set_font(squidFont);

draw_9slice(x, y, width, height, sprTextBox, 0);

var _drawX = x + padding;
var _drawY = y + padding;

if (sprite_exists(_image)) {
		var _imageW = sprite_get_width(_image);
		var _imageH = sprite_get_height(_image);
		
		draw_sprite(_image, 0, _drawX + _imageW / 2, _drawY + _imageH / 2);
		
		_drawX += _imageW + padding;
}

draw_set_color(c_black);

draw_text(_drawX, _drawY, _name);

_drawY += string_height(_name) + padding;

var _maxW = width - (_drawX + padding);

draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);

draw_set_color(c_white)
		
	