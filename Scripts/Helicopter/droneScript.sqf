uiSleep 600; 

private _drones = [drone1, drone2, drone3, drone4]; 
private _enemySide = east; 
private _groups = allGroups; 
private _targetGroups = []; 

{
	if (side _x == _enemySide) then {
		_targetGroups pushBack _x;
	};   
} forEach _groups; 

while {alive drone_operator} do {
	uiSleep 30;
	private _knowledge = independent knowsAbout (leader group1);
	if (_knowledge > 1) then {
		{	
			if (!alive drone_operator) then {break}; 
			if (alive _x) then {
				private _targetSquad = group1; //selectRandom _targetGroups; // ramdonly select group or select group mannually
				private _unitsInSquad = units _targetSquad; 
				private _target = selectRandom _unitsInSquad; 

				private _droneGroup = group _x; 
				private _droneWP = _droneGroup addWaypoint [getPosASL _target, -1];
				_droneWP setWaypointType "move";
				_droneWP setWaypointSpeed "FULL";  

				_x flyInHeight 40; 
				private _grenadesCounter = 2;

				uiSleep 15; 

				while {_grenadesCounter > 0} do {
					if (!alive _x) then {break};
					if (!alive drone_operator) then {break};  
					for "_i" from (count waypoints _droneGroup - 1) to 0 step -1 do {
						deleteWaypoint [_droneGroup, _i];
					};
					private _wp = _droneGroup addWaypoint [getPosASL _target, -1];
					_wp setWaypointType "MOVE";
					_wp setWaypointSpeed "FULL";
					
					if (_x distance2D _target <= 7 && speed _target == 0) then {
						"GrenadeHand" createVehicle getPos _x; 
						_grenadesCounter = _grenadesCounter - 1;   	
						_target = selectRandom _unitsInSquad; 	
					};
					uiSleep 5; 
				}; 
				if (alive _x) then {
					private _rtb = _droneGroup addWaypoint [getPos droneHub, -1]; 
					_rtb setWaypointType "MOVE";
					_rtb setWaypointSpeed "FULL";
					[_x, "LAND"] execVM "Scripts\chopperLand.sqf";
				};
				if (!alive drone_operator) then {break};
				uiSleep 300; 
			};
		} forEach _drones; 
	};
}; 

{
	deleteVehicleCrew _x; 
} forEach _drones;

