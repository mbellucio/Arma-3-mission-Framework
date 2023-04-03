private _message_array = ["sending.", "sending..", "sending..."];
 
for "j" from 0 to 3 do {
	for "i" from 0 to 2 do {
		ctrlSetText [1000, _message_array select i];
		uiSleep 0.7; 
	};
};
ctrlSetText [1000, "sent!"];
uiSleep 2; 

phone_trigger = message;
message = '';  
ctrlSetText [1000, message];

