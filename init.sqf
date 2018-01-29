	private _data = "bobo";
	private _code = { 
		switch (_this select 1) do {
			case "set" : {
				(_this select 0) set [1, _this select 2];
			};
			case "get" : {
				(_this select 0) select 1;
			};
		};
	};

	private _object = [_code, _data];
	[_object, "set", "jean"] call ( _object select 0);
	[_object, "set", "nice de brice"] call ( _object select 0);
	hintc format ["%1", _object];

	/*CALL(_object, "set", "jean") -> [_object, "set", "jean"] call ( _object select 0);*/
