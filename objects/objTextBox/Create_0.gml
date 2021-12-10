/// @description init
messages = ds_list_create();
messageID = 0;

messageText = "";
messageChar = 0;
messageSpeed = .3;

enum MSG {
	TEXT,
	NAME,
	IMAGE
}

var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

height = floor(_guiH * .45);
width = _guiW;

x = 0;
y = _guiH - height;

padding = 8;
