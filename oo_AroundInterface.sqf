#include "oop.h"
CLASS("oo_AroundInterface")

	PRIVATE UI_VARIABLE("control", "affichage");
	PRIVATE UI_VARIABLE("control", "button1");
	PRIVATE UI_VARIABLE("control", "button2");
	PRIVATE UI_VARIABLE("control", "button3");
	PRIVATE UI_VARIABLE("control", "button4");
	PRIVATE UI_VARIABLE("control", "button5");
	PRIVATE UI_VARIABLE("control", "button6");
	PRIVATE UI_VARIABLE("control", "button7");
	PRIVATE UI_VARIABLE("control", "button8");
	PRIVATE UI_VARIABLE("control", "button9");
	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "picturefond");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("affichage", _this displayCtrl 110);
		MEMBER("button1", _this displayCtrl 105);
		MEMBER("button2", _this displayCtrl 104);
		MEMBER("button3", _this displayCtrl 106);
		MEMBER("button4", _this displayCtrl 107);
		MEMBER("button5", _this displayCtrl 108);
		MEMBER("button6", _this displayCtrl 109);
		MEMBER("button7", _this displayCtrl 111);
		MEMBER("button8", _this displayCtrl 112);
		MEMBER("button9", _this displayCtrl 113);
		MEMBER("picturefond", _this displayCtrl 103);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		//Add your content here to init display
	};

	PUBLIC FUNCTION("", "btnAction_button2") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 2";
	};

	PUBLIC FUNCTION("", "btnAction_button1") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 1";
	};

	PUBLIC FUNCTION("", "btnAction_button3") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 3";
	};

	PUBLIC FUNCTION("", "btnAction_button4") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 4";
	};

	PUBLIC FUNCTION("", "btnAction_button5") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 5";
	};

	PUBLIC FUNCTION("", "btnAction_button6") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 6";
	};

	PUBLIC FUNCTION("", "btnAction_button7") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 7";
	};

	PUBLIC FUNCTION("", "btnAction_button8") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 8";
	};

	PUBLIC FUNCTION("", "btnAction_button9") {
		MEMBER("affichage", nil) ctrlSetText "Resultat: 9";
	};
	PUBLIC FUNCTION("", "getaffichage") FUNC_GETVAR("affichage");
	PUBLIC FUNCTION("", "getbutton1") FUNC_GETVAR("button1");
	PUBLIC FUNCTION("", "getbutton2") FUNC_GETVAR("button2");
	PUBLIC FUNCTION("", "getbutton3") FUNC_GETVAR("button3");
	PUBLIC FUNCTION("", "getbutton4") FUNC_GETVAR("button4");
	PUBLIC FUNCTION("", "getbutton5") FUNC_GETVAR("button5");
	PUBLIC FUNCTION("", "getbutton6") FUNC_GETVAR("button6");
	PUBLIC FUNCTION("", "getbutton7") FUNC_GETVAR("button7");
	PUBLIC FUNCTION("", "getbutton8") FUNC_GETVAR("button8");
	PUBLIC FUNCTION("", "getbutton9") FUNC_GETVAR("button9");
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getpicturefond") FUNC_GETVAR("picturefond");
	PUBLIC FUNCTION("control", "setaffichage"){ MEMBER("affichage", _this); };
	PUBLIC FUNCTION("control", "setbutton1"){ MEMBER("button1", _this); };
	PUBLIC FUNCTION("control", "setbutton2"){ MEMBER("button2", _this); };
	PUBLIC FUNCTION("control", "setbutton3"){ MEMBER("button3", _this); };
	PUBLIC FUNCTION("control", "setbutton4"){ MEMBER("button4", _this); };
	PUBLIC FUNCTION("control", "setbutton5"){ MEMBER("button5", _this); };
	PUBLIC FUNCTION("control", "setbutton6"){ MEMBER("button6", _this); };
	PUBLIC FUNCTION("control", "setbutton7"){ MEMBER("button7", _this); };
	PUBLIC FUNCTION("control", "setbutton8"){ MEMBER("button8", _this); };
	PUBLIC FUNCTION("control", "setbutton9"){ MEMBER("button9", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setpicturefond"){ MEMBER("picturefond", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("affichage");
		DELETE_UI_VARIABLE("button1");
		DELETE_UI_VARIABLE("button2");
		DELETE_UI_VARIABLE("button3");
		DELETE_UI_VARIABLE("button4");
		DELETE_UI_VARIABLE("button5");
		DELETE_UI_VARIABLE("button6");
		DELETE_UI_VARIABLE("button7");
		DELETE_UI_VARIABLE("button8");
		DELETE_UI_VARIABLE("button9");
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("picturefond");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
