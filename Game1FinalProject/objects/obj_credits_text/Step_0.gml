/// @description

//get input

up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_enter);

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
	break;
	
case 1:
	game_end();
	break;

	}
	
}