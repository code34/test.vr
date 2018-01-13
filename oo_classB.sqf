#include "oop.h"

CLASS_EXTENDS("oo_classB", "oo_classA")
	PUBLIC FUNCTION("","constructor") { 
		MEMBER("sel", "selClassB");
		MEMBER("score", 10);
		MEMBER("tableau", ["maison"]);
	};

	PUBLIC FUNCTION("","getString") {
		SUPER("getString", nil) + " Nicolas";
	};

	PUBLIC FUNCTION("string","overRide") {
		MEMBER("getTableau", nil) pushBack _this;
	};

	PUBLIC FUNCTION("", "loopback") {
		MEMBER("goinloop", nil);
	};

	PUBLIC FUNCTION("", "loopbackfinish") {
		"i just leave the loopback";
	};

	PUBLIC FUNCTION("","showHint") {
		MEMBER("sel", nil);
	};
ENDCLASS;