private _helo = _this select 0; 
private _mode = _this select 1; 

while { alive _helo && not unitReady _helo } do {
	sleep 1;
};
if (alive _helo) then {
	_helo land _mode;
};
