///////////////////////////////////////////////////////////////////
///////// HELI FAST ROPE V1.1 - MADE BY MATHEUS BELLUCIO /////////
/////////////////////////////////////////////////////////////////

// !! Join our Discord! - https://discord.gg/NPf8ZCpG8B

//==================================================================================================================//

////////////////////////////
/// Parameters Explained///
//////////////////////////

// 0 - Helicopter == Give the helicopter Object a name
// 1 - Helicopter Group == Give the AI Group Controlling the Helicopter a name(MUST BE IN THE GROUP SECTION)
// 2 - Helipad object == Put an Invisible Helipad where you want the Fast Rope to be and name itemCargo
// 3 - Crew Count == A number of how many AI is Crewing the Helicopter
// 4 - Marker 1 == The first Waypoint for the Helicopter to go, flying of course
// 5 - Approach Marker == A Marker to define from where the Chopper will begin it's Approach to the Fast Rope zone 
// 6 - Fast Rope Marker == A Marker to Define where the Fast Rope Will occur(MUST BE SAME PLACE AS THE HELIPAD)
// 7 - Exit Marker == Put a marker far away in the direction you want the Chopper to exit the area from. Later on, Chopper and it's units will be deleted

// Calling the script woul be like this:
// [heli1, groupHeli1, helipad1, 4, "mkr1", "mkr2", "mkr3", "mkr4"] execVM "Scripts\FastRope.sqf";

//DONT FORGET TO PUT THIS SCRIPT IN THE SCRIPTS FOLDER, OR TO FIZ IT'S CALLING TEXT!!!!


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////// ATTENTION - Do not edit below - ATTENTION - Do not edit below - ATTENTION - Do not edit below - ATTENTION //////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

myHelo = _this select 0;
HeloGroup = _this select 1;
HelipadObj = _this select 2;
CrewCount = _this select 3;
MarkerGo = _this select 4;
MarkerApr = _this select 5; 
FastRopeMarker = _this select 6; 
MoveAwayMarker = _this select 7;

// wait for everyone to get in helicopter
waitUntil {count (allPlayers) isEqualTo count (crew myHelo) - CrewCount};

// first waypoint 
wp1 = HeloGroup addWaypoint [getMarkerPos (MarkerGo), 0];
wp1 setWaypointType "MOVE";
wp1 setWaypointSpeed "FULL";

// Approach Waypoint 
wpapr = HeloGroup addWaypoint [getMarkerPos (MarkerApr), 0];
wpapr setWaypointType "MOVE";
wpapr setWaypointSpeed "NORMAL";
wpapr setWaypointStatements ["true", "myHelo flyInHeight 20"];

// Fast Rope Waypoint
wpfr = HeloGroup addWaypoint [getMarkerPos (FastRopeMarker), 0];
wpfr setWaypointType "MOVE";
wpfr setWaypointSpeed "LIMITED";
wpfr setWaypointCompletionRadius 1;
wpfr setWaypointStatements ["true", "myHelo flyInHeight 20"];
wpfr setWaypointForceBehaviour true;

// Chopper exit area waypoint
finwp = HeloGroup addWaypoint [getMarkerPos (MoveAwayMarker), 0];
finwp setWaypointType "MOVE";
finwp setWaypointSpeed "NORMAL";

// Disable the next Waypoit wich is the exit
while {true} do {
	distanceLock = myHelo distance HelipadObj;
	if (distanceLock < 200) exitWith {myHelo lockWP true; myHelo flyInHeight 20};
	uiSleep 1; 
};

// when all players leave chopper it will resume it's last waypoint
waitUntil {uiSleep 1; count(crew myHelo) isEqualTo CrewCount}; 
uiSleep 20; 
myHelo lockWP false; 
uiSleep 60; 

// vehicle and it's crew it's deleted to save performace troughout the mission
{ myHelo deleteVehicleCrew _x } forEach crew myHelo;
deleteVehicle myHelo;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


