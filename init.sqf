	sleep 2;

	while { true } do {
		// cible vectorDiff source
		_vector = (getPosASL toto) vectorDiff  (getPosASL player);
		_dir = (_vector select 0) atan2 (_vector select 1);
		if (_dir < 0) then {_dir = 360 + _dir};
		sleep 0.1;
		hint format ["%1", _dir];
	};

