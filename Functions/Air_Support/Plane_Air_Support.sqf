private _coord = _this select 0; 
private _plane = _this select 1; 
private _group = _this select 2; 

// private _plane = plane1; 

// private _target = "HeliHEmpty" createVehicle _coord; 

private _target = "HeliHEmpty" createVehicle _coord; 
uiSleep 1; 

private _waypoint = _group addWaypoint [_coord, -1];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointSpeed "FULL";
_waypoint setWaypointCombatMode "RED";
_waypoint setWaypointBehaviour "COMBAT";

waitUntil {_plane distance _target <= 600 && unitReady _plane}; 

driver _plane doTarget _target; 
// _plane fireAtTarget [_target, "rhs_ammo_fab500_m54"];
_plane forceWeaponFire ["rhs_ammo_s5k1", "Burst"]; 
_plane doFire _target; 
// _unit doTarget _target; 
_plane fireAtTarget [_target, "rhs_ammo_s5k1"];
// _unit forceWeaponFire ["rhs_ammo_fab500_m54", "Single"]; 
// _unit doFire _target; 

