	sleep 2;

private _fn_vectorAngle = {
	params ["_vector_1","_vector_2"];
	_vector_1 params ["_x1","_y1"]; 
	_vector_2 params ["_x2","_y2"]; 
	(_y2 atan2 _x2) - (_y1 atan2 _x1)
};

private _fn_correctAngle = {
	params [["_dir",0,[0]]];

	_dir = if (_dir < 0) then {_dir + 360}else{_dir};
	_dir = if (_dir > 360) then {_dir - 360}else{_dir};
	_dir
};

	private _dire = "";
	while { true } do {
/*		_vector_1 = getPosASL toto vectorFromTo getPosASL player; 
		_vector_2 = getPosASL toto vectorFromTo getPosASL toto; 
		_angle = [_vector_2,_vector_1] call _fn_vectorAngle;
		_dir = [_angle] call _fn_correctAngle;*/

		// cible vectorDiff source
		_vector = (getPosASL toto) vectorDiff  (getPosASL player);
		_dir = 360 - (getDir player - ((_vector select 0) atan2 (_vector select 1)));
		if(_dir > 360) then { _dir = _dir mod 360;};
		if(_dir < 0) then { _dir = _dir + 360;};

		//_dir = (_vector select 0) atan2 (_vector select 1);

		
		sleep 0.1;
		//if(_dir >= 225 ) then { _dire = "droite";};
		//if(_dir <= 135 ) then { _dire = "gauche";};
		hint format ["%1 %2", _dire, _dir];
	};

