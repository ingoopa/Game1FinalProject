/// @description

if room == Level1
{
	if (has_item)
	{
		paused = true;
		if (keyboard_check_pressed(ord("Z"))){
			paused = false;
			has_item = false;
			instance_activate_all();
		}
	}
}