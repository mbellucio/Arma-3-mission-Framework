///////////////////////////////////////////////////////////////////
///////// AI change Pos V1.0 - MADE BY MATHEUS BELLUCIO /////////
/////////////////////////////////////////////////////////////////

// !! Join our Discord! - https://discord.gg/NPf8ZCpG8B

//[(independent, west, east or civilian)] execVM "Scripts\AIchangePos.sqf";

private _aiSide = _this select 0; 

while {true} do {
	private _idleAI = units _aiSide;
	{
		private _aiPos = position _x; 
		private _playerPos = position (leader group1);
		private _aiXcor = _aiPos select 0;
		private _playerXcor = _playerPos select 0; 
		private _aiMode = behaviour _x; 
		private _XcorDistance = _playerXcor - _aiXcor;  
		if (_aiMode == "COMBAT" && _XcorDistance < 0 ) then {_x enableAI "path"};
	} forEach _idleAI;
	uiSleep 60; 
}; 

