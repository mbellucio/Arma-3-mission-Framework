/////////////////////////////////////////////////////////////////////////
///////// Add Item to BackPack V1.0 - MADE BY MATHEUS BELLUCIO /////////
///////////////////////////////////////////////////////////////////////

// !! Join our Discord! - https://discord.gg/NPf8ZCpG8B

// PUT THIS ON initPlayerLocal.sqf

// [["item1", "item2", "item3"]] execVM "Scripts\AddItemToBackpack.sqf";

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////// ATTENTION - Do not edit below - ATTENTION - Do not edit below - ATTENTION - Do not edit below - ATTENTION //////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

private _player = player; 
private _items = _this select 0; 

uiSleep 2;

{
	_player addItemToBackpack _x;
} forEach _items; 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

