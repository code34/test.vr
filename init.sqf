	call compile preprocessFileLineNumbers "oo_classA.sqf";
	call compile preprocessFileLineNumbers "oo_classB.sqf";

	sleep 2;
	
	_classA = "new" call oo_classA;
	_classB = "new" call oo_classB;
