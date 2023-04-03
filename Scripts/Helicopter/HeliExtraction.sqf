///////////////////////////////////////////////////////////////////
///////// HELI EXTRACTION V1.0 - MADE BY MATHEUS BELLUCIO ////////
/////////////////////////////////////////////////////////////////

// !! Join our Discord! - https://discord.gg/NPf8ZCpG8B

// You only need to change the variables correctly and the script will work propperly!
// to call: execVM "Scripts\HeliExtraction.sqf";

heliGroup = extraction_group; // name of the group controlling the helicopter
heliName = extraction_heli; // name of the object helicoper
WP1 = getpos (leader group1); // waypoint that chopper will loiter waiting for player to smoke
WP1_Loiter_Radius = 300; // loiter radius
WP1_Loiter_Altitude = 100; // loiter altitude
smokeType = "SmokeShellGreen"; // classname of the smoke to make the heli land
Aircrew = 2; // number of AI's inside helicopter
WP_Final = "insertion_4"; // waypoint after helicopter pick up 
WP_FinalType = "GET OUT"; // 2 options, "LAND" and "GET_OUT"; 
WP_FinalWaypoint = "insertion_1"; // only if _WP_FinalType == "GET OUT", if not leave empty "", this is the position the Heli will go after drop players at _WP_Final

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////// ATTENTION - Do not edit below - ATTENTION - Do not edit below - ATTENTION - Do not edit below - ATTENTION //////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
["Sound_1"] remoteExec ["playSound"];

defWaypoint = extraction_defense addWaypoint [WP1, 0];
defWaypoint setWaypointType "SAD";
defWaypoint setWaypointSpeed "FULL";
_wp1 = heliGroup addWaypoint [WP1, 0];
_wp1 setWaypointType "LOITER";
_wp1 setWaypointSpeed "NORMAL";
_wp1 setWaypointLoiterRadius WP1_Loiter_Radius; 
_wp1 setWaypointLoiterAltitude WP1_Loiter_Altitude;
heliGroup setBehaviour "CARELESS";
uiSleep 20;

{
	_x addEventHandler ["Fired", {if (_this select 4 isequalto smokeType) then {
		for "_i" from count waypoints heliGroup - 1 to 0 step -1 do {
		deleteWaypoint [heliGroup, _i];
		};
		_smoke = _this select 6;
		_landpad = createVehicle ["Land_HelipadEmpty_F", getposatl _smoke, [], 0, "NONE"];
		_wp2 = heliGroup addWaypoint [position _landpad, 0]; 
		_wp2 setWaypointType "MOVE";
		_wp2 setWaypointSpeed "NORMAL";
		_wp2 setWaypointCompletionRadius 5;
		[heliname, "GET OUT"] execVM "Scripts\chopperLand.sqf";
		// _wp2 setWaypointStatements ["true", "heliName land 'GET OUT'"];
		};
	}];
} forEach allPlayers;

uiSleep 20;

while {true} do {
	private _soldiersAlive = {alive _x} count allPlayers;
	if ((count (crew heliName) - AirCrew) isEqualTo _soldiersAlive) exitWith{
		["Music_1"] remoteExec ["playMusic"];
		if (WP_FinalType == "GET OUT") exitWith{
			wp3 = heliGroup addWaypoint [getMarkerPos WP_Final, 0];
			wp3 setWaypointType "MOVE";
			wp3 setWaypointSpeed "NORMAL";
			wp3 setWaypointCompletionRadius 5;
			wp3 setWaypointStatements ["true", "heliName land 'GET OUT'"];
			waitUntil {Aircrew isEqualTo count (crew heliName)};
			uiSleep 10; 
			heliName doMove (getMarkerPos WP_FinalWaypoint);
		};
		if (WP_FinalType == "GET OUT") exitWith{
			wp3 = heliGroup addWaypoint [getMarkerPos WP_Final, 0];
			wp3 setWaypointType "MOVE";
			wp3 setWaypointSpeed "NORMAL";
			wp3 setWaypointCompletionRadius 5;
			wp3 setWaypointStatements ["true", "heliName land 'LAND'"];
		};
	};
	uiSleep 2; 
};

uiSleep 60; 
{ heliName deleteVehicleCrew _x } forEach crew heliName;
deleteVehicle heliName;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


