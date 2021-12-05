/// @description

if room == Level1
{
	if (has_item)
	{
		paused = true;
		if (keyboard_check_pressed(vk_escape)){
			paused = false;
			has_item = false;
			instance_activate_all();
		}
	}
} 