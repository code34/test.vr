sleep 2;

private _time = diag_tickTime;
private _someoneIsNear = false;

for "_i" from 0 to 10000 step 1 do {
	//_someoneIsNear = {_x distance [0,0,0] < 1000} count allUnits > 0;
	_someoneIsNear = call {
		private _units = allunits;
		_i = 0;
		while { _units select _i} do {
			if((_units select _i) distance [0,0,0] < 1000) exitWith {_true;};
			_i = _i + 1;
		};
		false;
	};
};

_time = diag_tickTime - _time;
hintc format ["%1 %2", _time, _someoneIsNear];
