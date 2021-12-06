/// @description

if room == Level2
{
	if keyboard_check_pressed(vk_escape)
	{
		paused = !paused;
		if paused == false
		{
			instance_activate_all();
		}
	}
	if paused == true
	{
		alarm[0]++;
		alarm[1]++;
		//get input

		up_key = keyboard_check_pressed(ord("W"));
		down_key = keyboard_check_pressed(ord("S"));
		accept_key = keyboard_check_pressed(vk_enter);
		
		if(up_key || down_key || accept_key) audio_play_sound(sfx_click_01, 10, false);

		//move through the menu
		pos += down_key - up_key;
		if pos >= op_length { pos = 0 };
		if pos < 0 {pos = op_length - 1};

		//using the options
		if accept_key {
	
		switch(pos)
		{
		//start game
		case 0:
			room_goto(rm_title_card);
			audio_pause_all();
			break;
	
		case 1:
			game_end();
			break;

			}
	
		}
	}
}