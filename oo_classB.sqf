#include "oop.h"

CLASS_EXTENDS("oo_classB", "oo_classA")
    PUBLIC FUNCTION("","constructor") { 
        MEMBER("sel", "selClassB");
    };

    PUBLIC FUNCTION("","showHint") {
        hint "OVER";
    };
ENDCLASS;
    