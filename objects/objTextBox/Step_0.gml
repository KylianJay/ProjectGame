/// @description Insert description here
// You can write your code in this editor
var _arr = messages[|messageID];

var _text = _arr[MSG.TEXT];

messageText = string_copy(_text, 1, messageChar);

if (messageChar <= string_length(_text)) messageChar += messageSpeed;

else if (keyboard_check_pressed(vk_enter)) {
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
	}
	else {
		instance_destroy();
	}
}
