// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// @arg0 cutscene where actions are added
// @arg1 actor that performs the actions
// @arg2 atype (action type)
// @arg3 [data], array with the data for the action

function scp_add_anim(_cts, _actor, _atype, _data){

	//array size
	var size = array_length_2d(global.ctsAnims, _cts);

	//add
	global.ctsAnims[_cts, size] = [_actor, _atype, _data];

}