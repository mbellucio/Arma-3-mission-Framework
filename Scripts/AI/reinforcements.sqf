private _rGroups = [rg1, rg2, rg3, rg4]; 

{
	private _wp = _x addWaypoint [getPos (leader group1), 30];
	_wp setWaypointType "SAD"; 
	_wp setWaypointSpeed "FULL"; 
} forEach _rGroups; 

uiSleep 120; 

while {true} do {
	{
		for "_i" from (count waypoints _x - 1) to 0 step -1 do {
			deleteWaypoint [_x, _i];
		};
		private _wp = _x addWaypoint [getPos (leader group1), 30];
		_wp setWaypointType "SAD"; 
		_wp setWaypointSpeed "FULL";
	} forEach _rGroups; 
	uiSleep 60; 	
};



