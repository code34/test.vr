#include "oop.h"
CLASS("oo_menuprincipal")

	PRIVATE UI_VARIABLE("control", "Emergency");
	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "Radio");
	PRIVATE UI_VARIABLE("control", "Team");
	PRIVATE UI_VARIABLE("control", "Temperature");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("Emergency", _this displayCtrl 105);
		MEMBER("Radio", _this displayCtrl 103);
		MEMBER("Team", _this displayCtrl 104);
		MEMBER("Temperature", _this displayCtrl 102);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		//Add your content here to init display
	};

	PUBLIC FUNCTION("", "btnAction_Temperature") {

	};

	PUBLIC FUNCTION("", "btnAction_Radio") {

	};

	PUBLIC FUNCTION("", "btnAction_Team") {

	};

	PUBLIC FUNCTION("", "btnAction_Emergency") {

	};
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getEmergency") FUNC_GETVAR("Emergency");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getRadio") FUNC_GETVAR("Radio");
	PUBLIC FUNCTION("", "getTeam") FUNC_GETVAR("Team");
	PUBLIC FUNCTION("", "getTemperature") FUNC_GETVAR("Temperature");
	PUBLIC FUNCTION("control", "setEmergency"){ MEMBER("Emergency", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setRadio"){ MEMBER("Radio", _this); };
	PUBLIC FUNCTION("control", "setTeam"){ MEMBER("Team", _this); };
	PUBLIC FUNCTION("control", "setTemperature"){ MEMBER("Temperature", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("Emergency");
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("Radio");
		DELETE_UI_VARIABLE("Team");
		DELETE_UI_VARIABLE("Temperature");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
