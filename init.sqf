
	sleep 2;

	private _positions = [];
	private _blacklistx = [];
	private _blacklisty = [];
	private _blacklist = [];

	get_coord = {
		private _blacklist = _this;
		for "_i" from 0 to 7 step 1 do {
			for "_z" from 0 to 7 step 1 do {
				if!([_i, _z] in _blacklist) exitWith {[_i, _z];};
			};
		};
	};

	set_blacklist = {
		private _positionx = _this select 0;
		private _positiony = _this select 1;

		for "_i" from _positionx -4 to 4 step -1 do {
			
		};

		for "_i" from _positiony -4 to 4 step -1 do {
			
		};

		_blacklist = _blacklist append [
			[_positionx + 1, _positiony + 1],
			[_positionx + 2, _positiony + 2],
			[_positionx + 3, _positiony + 3],
			[_positionx + 4, _positiony + 4],
			[_positionx + 1, _positiony - 1],
			[_positionx + 2, _positiony - 2],
			[_positionx + 3, _positiony - 3],
			[_positionx + 4, _positiony - 4],
			[_positionx - 1, _positiony + 1],
			[_positionx - 2, _positiony + 2],
			[_positionx - 3, _positiony + 3],
			[_positionx - 4, _positiony + 4],
			[_positionx - 1, _positiony - 1],
			[_positionx - 2, _positiony - 2],
			[_positionx - 3, _positiony - 3],
			[_positionx - 4, _positiony - 4]
		];
	};

	for "_i" from 0 to 7 step 1 do {
		_coord = _blacklist call get_coord;
		_blacklist append (_coord call set_blacklist);
		_positions pushBack _coord;
	};