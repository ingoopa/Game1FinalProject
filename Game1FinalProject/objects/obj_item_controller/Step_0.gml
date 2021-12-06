/// @description

if room == Level1
{
	if (has_item || has_paper_02)
	{
		paused = true;
		if (keyboard_check_pressed(vk_escape)){
			audio_play_sound(sfx_click_01, 10, false);
			paused = false;
			has_item = false;
			has_paper_02 = false;
			instance_activate_all();
		}
	}
} 