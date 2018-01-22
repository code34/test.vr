#include "oop.h"
CLASS("oo_menuprincipal")

	PRIVATE UI_VARIABLE("control", "Emergency");
	PRIVATE UI_VARIABLE("control", "listebas");
	PRIVATE UI_VARIABLE("control", "listehaut");
	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "monbackground");
	PRIVATE UI_VARIABLE("control", "Radio");
	PRIVATE UI_VARIABLE("control", "Team");
	PRIVATE UI_VARIABLE("control", "Temperature");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("Emergency", _this displayCtrl 106);
		MEMBER("listebas", _this displayCtrl 110);
		MEMBER("listehaut", _this displayCtrl 111);
		MEMBER("monbackground", _this displayCtrl 101);
		MEMBER("Radio", _this displayCtrl 104);
		MEMBER("Team", _this displayCtrl 105);
		MEMBER("Temperature", _this displayCtrl 103);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		//Add your content here to init display
	};

	PUBLIC FUNCTION("", "btnAction_Temperature") {
		lbClear MEMBER("listehaut", nil);
		{
			MEMBER("listehaut", nil) lbAdd _x;
		}foreach ["10° - cold", "20° - Temperate", "30° - Tropical"];
	};

	PUBLIC FUNCTION("", "btnAction_Radio") {

	};

	PUBLIC FUNCTION("", "btnAction_Team") {

	};

	PUBLIC FUNCTION("", "btnAction_Emergency") {

	};

	/*
	*	onLBDrag:
	*		Drag & drop operation started.
	*		Returns the control and the selected element index.
	*/
	PUBLIC FUNCTION("array", "onLBDrag_listebas") {
		private _control = _this select 0;
		private _index = _this select 1;

		hint format ["drag %1", _this];
	};

	/*
	*	onLBDrop:
	*		Drag & drop operation finished.
	*		Returns the control and the x and y coordinates.
	*/
	PUBLIC FUNCTION("array", "onLBDrop_listebas") {
		private _control = _this select 0;
		private _abs = _this select 1;
		private _ord = _this select 2;

		hint format ["drop %1", _this];
	};

	/*
	*	onLBDrag:
	*		Drag & drop operation started.
	*		Returns the control and the selected element index.
	*/
	PUBLIC FUNCTION("array", "onLBDrag_listehaut") {
		private _control = _this select 0;
		private _index = _this select 1;

		hint format ["drag %1", _this];
	};

	/*
	*	onLBDrop:
	*		Drag & drop operation finished.
	*		Returns the control and the x and y coordinates.
	*/
	PUBLIC FUNCTION("array", "onLBDrop_listehaut") {
		private _control = _this select 0;
		private _abs = _this select 1;
		private _ord = _this select 2;

		hint format ["drop %1", _this];
	};
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getEmergency") FUNC_GETVAR("Emergency");
	PUBLIC FUNCTION("", "getlistebas") FUNC_GETVAR("listebas");
	PUBLIC FUNCTION("", "getlistehaut") FUNC_GETVAR("listehaut");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getmonbackground") FUNC_GETVAR("monbackground");
	PUBLIC FUNCTION("", "getRadio") FUNC_GETVAR("Radio");
	PUBLIC FUNCTION("", "getTeam") FUNC_GETVAR("Team");
	PUBLIC FUNCTION("", "getTemperature") FUNC_GETVAR("Temperature");
	PUBLIC FUNCTION("control", "setEmergency"){ MEMBER("Emergency", _this); };
	PUBLIC FUNCTION("control", "setlistebas"){ MEMBER("listebas", _this); };
	PUBLIC FUNCTION("control", "setlistehaut"){ MEMBER("listehaut", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setmonbackground"){ MEMBER("monbackground", _this); };
	PUBLIC FUNCTION("control", "setRadio"){ MEMBER("Radio", _this); };
	PUBLIC FUNCTION("control", "setTeam"){ MEMBER("Team", _this); };
	PUBLIC FUNCTION("control", "setTemperature"){ MEMBER("Temperature", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("Emergency");
		DELETE_UI_VARIABLE("listebas");
		DELETE_UI_VARIABLE("listehaut");
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("monbackground");
		DELETE_UI_VARIABLE("Radio");
		DELETE_UI_VARIABLE("Team");
		DELETE_UI_VARIABLE("Temperature");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
