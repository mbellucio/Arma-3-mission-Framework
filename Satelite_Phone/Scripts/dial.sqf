dial = _this select 0; 
message = message + dial;
msg_count = count message;
if (msg_count > 6) then {
	message = "ERROR!";
	ctrlSetText [1000, message];
	uiSleep 1;
	message = "";
};
ctrlSetText [1000, message];