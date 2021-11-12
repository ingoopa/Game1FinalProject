/// @description 

//Pausing the game
if room == Level1
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
    }
}