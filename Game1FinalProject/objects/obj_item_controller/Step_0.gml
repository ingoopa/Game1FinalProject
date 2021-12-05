/// @description

if room == Level1
{
	if (has_item)
	{
		paused = true;
		if (keyboard_check_pressed(vk_escape)){
			audio_play_sound(sfx_click_01, 10, false);
			paused = false;
			has_item = false;
			instance_activate_all();
		}
	}
} 