// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newTextBox(){
	
	var _obj;
	if (instance_exists(objText)) _obj = objTextQueued; else _obj = objText;
	with (instance_create_layer(0, 0, "HUDInstances", _obj))
	{
		message = argument[0];
		if (instance_exists(other)) originInstance = other.id else originInstance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		if (argument_count > 2)
		{
			
			//trim markers for responses
			responses = argument[2];
			for (var i = 0; i < array_length_1d(responses); i++)
			{
				var _markerPosition = string_pos(":",responses[i]);
				responseScripts[i] = string_copy(responses[i], 1, _markerPosition-1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] = string_delete(responses[i], 1, _markerPosition);
				breakpoint = 10;
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}
	}
	with (objPlayerOne)
	{
		if (state_ != PlayerStateLocked)
		{
			lastState = state_;
		}
	}			
}