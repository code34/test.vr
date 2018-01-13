#include "oop.h"

CLASS("oo_classA")
    PUBLIC VARIABLE("string","sel");
    PUBLIC FUNCTION("","constructor") { 
        MEMBER("sel", "selClassA");
    };

    PUBLIC FUNCTION("","askToHint") {
        MEMBER("showHint", nil);
    };

    PUBLIC FUNCTION("","showHint") {
        hint MEMBER("sel", nil);
    };
ENDCLASS;