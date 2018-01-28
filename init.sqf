	call compile preprocessFileLineNumbers "oo_object.sqf";

	sleep 2;

	_object = "new" call OO_OBJECT;
	"push" call _object;
	"hint" call _object;