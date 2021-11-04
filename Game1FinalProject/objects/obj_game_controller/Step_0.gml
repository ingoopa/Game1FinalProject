/// @description Insert description here
// You can write your code in this editor


if(global.ctsPos >= 0){
	var anim = global.ctsAnims[global.ctsType, global.ctsPos];
	var actor = anim[0];
	var type = anim[1];
	var data = anim[2];
	
	switch(type){
		case atype.move:
			//get data
			var dist = data[0];
			var dir = data[1];
			
			//move actor
			actor.spd = actor.move_speed;
			actor.dir = dir;
			
			//add to movedDist
			actor.movedDist += actor.spd;
			
			//end
			if(actor.movedDist >= dist){
				global.ctsPos++;
				
				//reset actor movement
				actor.spd = 0;
				actor.movedDist = 0;
			}
			break;
		
		case atype.idle:
			global.ctsPos++;
			break;
			
		case atype.pager:
			instance_create_layer(actor.x + 16, actor.y + 16, "Instances", obj_seismic_02);
			global.ctsPos++;
			break;
			
		case atype.text:
			instance_create_layer(100, 100, "Instances", obj_level1_text);
			break;
			
	}
	
	if(global.ctsPos >= array_length_2d(global.ctsAnims, global.ctsType)){
		global.ctsPos = -1;
		global.ctsType = -1;
	}
}
