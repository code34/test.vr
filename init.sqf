	_count = count (configfile >> "cfgVehicles");
	_list = [];

	for "_i" from 0 to (_count-1) do {
		_actual = (configfile >> "cfgVehicles") select _i;
		if (isclass _actual) then {
			_class = configname _actual;
			_model = gettext (configfile >> "cfgvehicles" >> _class >> "model");
			diag_log format ["%1", _model];
		};
	};
	hint "done";

/*_pos = player getRelPos [10, 0];
_tank = createSimpleObject ["A3\Structures_F_Bootcamp\Civ\SportsGrounds\GymBench_01_F.p3d", _pos];
_tank setPos (_pos vectorAdd (getPosWorld _tank vectorDiff (_tank modelToWorld [0,0,0])));*/