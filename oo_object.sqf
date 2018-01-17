#include "oop.h"

CLASS("OO_OBJECT")
	PRIVATE VARIABLE("string", "papamaman");
	PUBLIC FUNCTION("","constructor") {
		MEMBER("papamaman", "hello world");
	};
	PUBLIC FUNCTION("","deconstructor") {
		
	};
ENDCLASS;
