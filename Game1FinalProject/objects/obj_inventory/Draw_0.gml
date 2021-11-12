/// @description
if (isShowingMenu == true){
	
	instance_deactivate_all(true);
	draw_sprite_stretched
	(
		spr_nineslice,
		0,
		x-6,
		y-6,
		12+rowLength*36,
		12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
	);

	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		var xx = x + (i mod rowLength) * 36 + 2;
		var yy = y + (i div rowLength) * 36 + 2;
		draw_sprite(spr_slot, 0, xx, yy)
		if (inventory [i] != -1)
		{
			draw_sprite(spr_apple, inventory[i], xx, yy);
		}
	}
}

/*	
	if global.paused == true {
		if !surface_exists(global.paused_surf) {
			if global.paused_surf == -1 {
			instance_deactivate_all(true);
			}
	    global.paused_surf = surface_create(room_width, room_height);
	    surface_set_target(global.paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
    }
	else
    {
    draw_surface(global.paused_surf, 0, 0);
    
	//Pause the game
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	draw_sprite_stretched
	(
		spr_nineslice,
		0,
		x-6,
		y-6,
		12+rowLength*36,
		12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
	);

	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		var xx = x + (i mod rowLength) * 36 + 2;
		var yy = y + (i div rowLength) * 36 + 2;
		draw_sprite(spr_slot, 0, xx, yy)
		if (inventory [i] != -1)
		{
			draw_sprite(spr_apple, inventory[i], xx, yy);
		}
		}
	}
	}
