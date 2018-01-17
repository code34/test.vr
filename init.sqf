	sleep 2;

	call compile preprocessFileLineNumbers "oo_object.sqf";

	copyToClipboard format ["%1", OO_OBJECT];

	_object = "new" call OO_OBJECT;
	"set" call _object;