/// @description

if paused == true
{
	instance_deactivate_all(true);
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false); //could make smaller?
	draw_set_alpha(1);
	//draw paused text here
}