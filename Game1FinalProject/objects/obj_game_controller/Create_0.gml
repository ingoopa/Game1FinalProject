/// @description Insert description here
// You can write your code in this editor
global.ctsPos = -1;		//action num that the cutscene is on
global.ctsType = -1;	//stores a cutscene currently running

global.ctsAnims = [];	//stores actions in cutscenes

//cutscenes
enum cts{	//cutscene types
	intro,
	obtained_pager
}

//animations
enum atype{		//stores actions that "actors" can perform
	move,
	idle,
	pager,
	text
}

//CUTSCENE: intro
scp_add_anim(cts.intro, obj_player, atype.move, [200, 0]);
scp_add_anim(cts.intro, obj_player, atype.idle, [0, 0]);
scp_add_anim(cts.intro, obj_pager, atype.pager, [0, 0]);
//scp_cutscene_start(cts.intro);

/*CUTSCENE: obtained_pager
if(distance_to_object(obj_pager) <= 5){
	scp_add_anim(cts.obtained_pager, obj_level1_text, atype.text, [0, 0]);
	scp_cutscene_start(cts.obtained_pager);
}
*/