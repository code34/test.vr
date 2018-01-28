	#include "oop.h"

	CLASS("OO_OBJECT")
		PRIVATE VARIABLE("array", "test");

		PUBLIC FUNCTION("","constructor") {
			MEMBER("test", []);
		};
		PUBLIC FUNCTION("","hint") {
			hint format ["%1", MEMBER("test", nil)];
		};
		PUBLIC FUNCTION("","push") {
			MEMBER("test", nil) pushBack "hello";
		};
		PUBLIC FUNCTION("","deconstructor") {
			
		};
	ENDCLASS;