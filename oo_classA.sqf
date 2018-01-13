#include "oop.h"

CLASS("oo_classA")
	PUBLIC VARIABLE("string","sel");
	PUBLIC VARIABLE("scalar","score");
	PUBLIC VARIABLE("array","tableau");

	PUBLIC FUNCTION("","constructor") { 
		MEMBER("sel", "selClassA");
		MEMBER("score", 0);
		MEMBER("tableau", ["rien"]);
	};

	PUBLIC FUNCTION("","getString") {
		"hello world";
	};

	PUBLIC FUNCTION("","goinloop") {
		MEMBER("loopbackfinish", nil);
	};

	PUBLIC FUNCTION("scalar","addScore") {
		MEMBER("score", MEMBER("score", nil) + _this);
	};

	PUBLIC FUNCTION("","getScore") {
		MEMBER("score", nil);
	};

	PUBLIC FUNCTION("","getTableau") {
		MEMBER("tableau", nil);
	};

	PUBLIC FUNCTION("string","addTableau") {
		MEMBER("tableau", nil) pushBack _this;
	};

	PUBLIC FUNCTION("","askToHint") {
		MEMBER("showHint", nil);
	};

	PUBLIC FUNCTION("","showHint") {
		MEMBER("sel", nil);
	};
ENDCLASS;