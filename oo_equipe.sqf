#include "oop.h"
CLASS("oo_oo_equipe")

	PRIVATE UI_VARIABLE("control", "addPlayer");
	PRIVATE UI_VARIABLE("control", "deletePlayer");
	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "OOP_Listbox_103");
	PRIVATE UI_VARIABLE("control", "OOP_Listbox_107");
	PRIVATE UI_VARIABLE("control", "OOP_MainLayer_100");
	PRIVATE UI_VARIABLE("control", "OOP_SubLayer_101");
	PRIVATE UI_VARIABLE("control", "OOP_Text_102");
	PRIVATE UI_VARIABLE("control", "OOP_Text_108");
	PRIVATE UI_VARIABLE("control", "OOP_Text_109");
	PRIVATE UI_VARIABLE("control", "Validate");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("addPlayer", _this displayCtrl 110);
		MEMBER("deletePlayer", _this displayCtrl 111);
		MEMBER("OOP_Listbox_103", _this displayCtrl 103);
		MEMBER("OOP_Listbox_107", _this displayCtrl 107);
		MEMBER("OOP_MainLayer_100", _this displayCtrl 100);
		MEMBER("OOP_SubLayer_101", _this displayCtrl 101);
		MEMBER("OOP_Text_102", _this displayCtrl 102);
		MEMBER("OOP_Text_108", _this displayCtrl 108);
		MEMBER("OOP_Text_109", _this displayCtrl 109);
		MEMBER("Validate", _this displayCtrl 106);
		MEMBER("Init", nil);
	};

	PUBLIC FUNCTION("", "Init"){
		{
			MEMBER("OOP_ListBox_103",nil) lbAdd name _x;
		}forEach allPlayers;
	};

	PUBLIC FUNCTION("", "btnAction_Validate") {
		closeDialog 0;
	};

	PUBLIC FUNCTION("", "btnAction_addPlayer") {
		hint "done";
	};

	PUBLIC FUNCTION("", "btnAction_deletePlayer") {

	};
	PUBLIC FUNCTION("", "getaddPlayer") FUNC_GETVAR("addPlayer");
	PUBLIC FUNCTION("", "getdeletePlayer") FUNC_GETVAR("deletePlayer");
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getOOP_Listbox_103") FUNC_GETVAR("OOP_Listbox_103");
	PUBLIC FUNCTION("", "getOOP_Listbox_107") FUNC_GETVAR("OOP_Listbox_107");
	PUBLIC FUNCTION("", "getOOP_MainLayer_100") FUNC_GETVAR("OOP_MainLayer_100");
	PUBLIC FUNCTION("", "getOOP_SubLayer_101") FUNC_GETVAR("OOP_SubLayer_101");
	PUBLIC FUNCTION("", "getOOP_Text_102") FUNC_GETVAR("OOP_Text_102");
	PUBLIC FUNCTION("", "getOOP_Text_108") FUNC_GETVAR("OOP_Text_108");
	PUBLIC FUNCTION("", "getOOP_Text_109") FUNC_GETVAR("OOP_Text_109");
	PUBLIC FUNCTION("", "getValidate") FUNC_GETVAR("Validate");
	PUBLIC FUNCTION("control", "setaddPlayer"){ MEMBER("addPlayer", _this); };
	PUBLIC FUNCTION("control", "setdeletePlayer"){ MEMBER("deletePlayer", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setOOP_Listbox_103"){ MEMBER("OOP_Listbox_103", _this); };
	PUBLIC FUNCTION("control", "setOOP_Listbox_107"){ MEMBER("OOP_Listbox_107", _this); };
	PUBLIC FUNCTION("control", "setOOP_MainLayer_100"){ MEMBER("OOP_MainLayer_100", _this); };
	PUBLIC FUNCTION("control", "setOOP_SubLayer_101"){ MEMBER("OOP_SubLayer_101", _this); };
	PUBLIC FUNCTION("control", "setOOP_Text_102"){ MEMBER("OOP_Text_102", _this); };
	PUBLIC FUNCTION("control", "setOOP_Text_108"){ MEMBER("OOP_Text_108", _this); };
	PUBLIC FUNCTION("control", "setOOP_Text_109"){ MEMBER("OOP_Text_109", _this); };
	PUBLIC FUNCTION("control", "setValidate"){ MEMBER("Validate", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("addPlayer");
		DELETE_UI_VARIABLE("deletePlayer");
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("OOP_Listbox_103");
		DELETE_UI_VARIABLE("OOP_Listbox_107");
		DELETE_UI_VARIABLE("OOP_MainLayer_100");
		DELETE_UI_VARIABLE("OOP_SubLayer_101");
		DELETE_UI_VARIABLE("OOP_Text_102");
		DELETE_UI_VARIABLE("OOP_Text_108");
		DELETE_UI_VARIABLE("OOP_Text_109");
		DELETE_UI_VARIABLE("Validate");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
