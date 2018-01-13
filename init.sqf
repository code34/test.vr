	call compile preprocessFileLineNumbers "oo_unittest.sqf";
	call compile preprocessFileLineNumbers "oo_classA.sqf";
	call compile preprocessFileLineNumbers "oo_classB.sqf";

	sleep 2;
	
	_unittest = "new" call OO_UNITTEST;
	_classA = "new" call oo_classA;
	_classB = "new" call oo_classB;

	["assert_equal", [_classA, "showHint", "selClassA",nil]] call _unittest;
	["assert_equal", [_classB, "showHint", "selClassB",nil]] call _unittest;
	["assert_equal", [_classA, "askToHint", "selClassA",nil]] call _unittest;
	["assert_equal", [_classB, "askToHint", "selClassB",nil]] call _unittest;
	["assert_equal", [_classA, "showHint", "selClassA",nil]] call _unittest;
	["assert_equal", [_classB, "showHint", "selClassB",nil]] call _unittest;
	["assert_equal", [_classB, "getScore", 10,nil]] call _unittest;
	["assert_equal", [_classA, "getScore", 0,nil]] call _unittest;
	
	["addScore", 100] call _classA;
	["assert_equal", [_classA, "getScore", 100,nil]] call _unittest;
	["addTableau", "damn"] call _classB;
	["addTableau", "pilou"] call _classA;
	["assert_equal", [_classA, "getTableau", ["rien", "pilou"],nil]] call _unittest;
	["assert_equal", [_classB, "getTableau", ["maison", "damn"],nil]] call _unittest;
	
	["overRide", "gmo"] call _classA;
	["overRide", "omg"] call _classB;
	["assert_equal", [_classA, "getTableau", ["rien", "pilou"],nil]] call _unittest;
	["assert_equal", [_classB, "getTableau", ["maison", "damn", "omg"],nil]] call _unittest;
	["assert_equal", [_classB, "loopback", "i just leave the loopback",nil]] call _unittest;
	["assert_equal", [_classB, "getString", "hello world Nicolas",nil]] call _unittest;
	["assert_not_equal", [_classB, "getString", "Hello World Nicolas",nil]] call _unittest;

	"dump" call _unittest;
