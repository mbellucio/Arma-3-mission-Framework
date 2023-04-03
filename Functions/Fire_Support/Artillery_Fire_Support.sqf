///////////////////////////////////////////////////////////////////
///////// Ambient Artilery V1.0 - MADE BY MATHEUS BELLUCIO /////////
/////////////////////////////////////////////////////////////////

// !! Join our Discord! - https://discord.gg/NPf8ZCpG8B

//execVM "Scripts\ambientArtillery.sqf";
 
params ["_fireAt"];
private _artyUnits = [arty1, arty2, arty3, arty4];
private _artyAmmo = getArtilleryAmmo [arty1] select 0;
private _artyTarget = _fireAt;

while {true} do {
	{
		private _rNum = [1, 10] call BIS_fnc_randomInt; 
		_x doArtilleryFire [_artyTarget, _artyAmmo, 10]; 
		uiSleep _rNum;
		_x setAmmo [currentWeapon _x, 10]; 
	} forEach _artyUnits;
	uiSleep 20; 
};





