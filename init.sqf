/*	_count = count (configfile >> "cfgVehicles");
	_list = [];

	for "_i" from 0 to (_count-1) do {
		_actual = (configfile >> "cfgVehicles") select _i;
		if (isclass _actual) then {
			_class = configname _actual;
			_model = gettext (configfile >> "cfgvehicles" >> _class >> "model");
			diag_log format ["%1", _model];
		};
	};*/

/*	sleep 2;
	_i = 0;
	trees = []; 
	{
		_i = _i + 1;
		if (str _x find ": t_" > -1) then {
			_model = ((getModelInfo _x) select 0);
			if!(_model in trees) then {
				trees pushBack _model;
				hint format["loop %1", _i];
				copyToClipboard format["%1", trees];
			};
		};
	} forEach nearestObjects [player, [], 20000];
	hintc format ["%1", trees];*/

/*	_count = count (configfile >> "CfgWorlds" >> "Enoch" >> "clutter");
	_list = [];

	for "_i" from 0 to (_count-1) do {
		_actual = (configfile >> "CfgWorlds" >> "Enoch" >> "clutter") select _i;
		if (isclass _actual) then {
			_class = configname _actual;
			_model = gettext (configfile >> "CfgWorlds" >> "Enoch" >> "clutter" >> _class >> "model");
			diag_log format ["%1", _model];
		};
	};
	foreach ["Enoch", "Altis", "Malden",""]*/

	hint "done";

_pos = player getRelPos [10, 0];
_tank = createSimpleObject ["A3\Structures_F_EPA\Items\Medical\BloodBag_F.p3d", _pos];
_tank setPos (_pos vectorAdd (getPosWorld _tank vectorDiff (_tank modelToWorld [0,0,0])));