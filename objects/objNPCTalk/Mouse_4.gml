/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(objTextBox)) {
	var _tb = instance_create_layer(0, 0, "HUDInstances", objTextBox);
	
	var _list = _tb.messages;
	
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}