#include "oop.h"

CLASS("OO_OBJECT")
	PRIVATE VARIABLE("string", "papamaman");
	PUBLIC FUNCTION("","constructor") {
		MEMBER("papamaman", "hello world");
	};
	PUBLIC FUNCTION("", "set") {
		MEMBER("mavariable", nil);
	};
	PUBLIC FUNCTION("","deconstructor") {
		
	};
ENDCLASS;
