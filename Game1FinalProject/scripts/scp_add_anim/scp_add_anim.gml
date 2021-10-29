// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// @arg0 cutscene where actions are added
// @arg1 actor that performs the actions
// @arg2 atype (action type)
// @arg3 [data], array with the data for the action

function scp_add_anim(_cts, _actor, _atype, _data){
//args
//var _cts = argument[0];
//var _actor = argument[1];
//var _atype = argument[2];
//var _data = argument[3];

	//array size
	var size = array_length_2d(global.ctsAnims, _cts);

	//add
	global.ctsAnims[_cts, size] = [_actor, _atype, _data];

}