uiSleep 10; 

while {true} do {
	private _items = items player; 
	if ("ACE_Cellphone" in _items) then {
		private _id = player addAction["Satelite Phone", "createDialog 'RscDisplayName'"];
		while {"ACE_Cellphone" in _items} do {
			_items = items player;
			uiSleep 1;
		}; 
		player removeAction _id;
	}; 
	uiSleep 1;
};


