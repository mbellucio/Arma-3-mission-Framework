if (!alive arty_1 && !alive arty_2 && !alive arty_3 && !alive arty_4 ) then {
	["artyKill","SUCCEEDED"] call BIS_fnc_taskSetState;
	uiSleep 5;
	["end1", true] remoteExecCall ["BIS_fnc_endMission"];
} else {
	["epicFail", false, 2] remoteExecCall ["BIS_fnc_endMission"];
};
