/// @description Insert description here
// You can write your code in this editor
global.ctsPos = -1;		//action num that the cutscene is on
global.ctsType = -1;	//stores a cutscene currently running

global.ctsAnims = [];	//stores actions in cutscenes

//cutscenes
enum cts{	//cutscene types
	intro	
}

//animations
enum atype{		//stores actions that "actors" can perform
	move,
	idle
}

//CUTSCENE: intro
scp_add_anim(cts.intro, obj_player, atype.move, [500, 0]);
//scp_add_anim(cts.intro, obj_player, atype.move, [64, 180]);
scp_cutscene_start(cts.intro);