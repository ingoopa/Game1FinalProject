/// @description

//make sure we're not at the end of the sentence
if (index < string_length(sentence))
{
	//increment the index
	index++;
	
	//play a sound
	
	var interval = random_range(0.08, 0.15);
	alarm[0] = room_speed * interval

	
}
else //if we're at the end, pause and move to next room.
{
	alarm[1] = room_speed * 2;
}








