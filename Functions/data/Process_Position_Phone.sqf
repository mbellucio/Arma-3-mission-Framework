params ["_phoneText"];
private _WorldPos = [_phoneText] call BIS_fnc_gridToPos; 
[str _WorldPos] remoteExec ["hint"]; 
private _returnArr = _WorldPos select 0; 
private _xCor = _returnArr select 0; 
private _yCor = _returnArr select 1; 
private _Return = [_xCor, _yCor]; 
_Return






