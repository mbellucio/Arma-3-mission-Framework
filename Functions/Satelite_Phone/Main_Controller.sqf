while {true} do {
	if ((count phone_trigger) == 6) then {
		private _coordinate = [phone_trigger] call OTAS_Fnc_Process_Position_Phone; 
		[_coordinate] call OTAS_Fnc_Artillery_Fire_Support;  
		call OTAS_Fnc_Reset_Code;  
	};
	uiSleep 1; 
};



