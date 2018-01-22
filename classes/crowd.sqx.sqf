



cl_typesqf_examples_Crowd_constructor = { private "_class_fields"; _class_fields = [["typesqf_examples_Crowd", []]];
    _class_fields set [1, "hello"];
    _class_fields set [2, []];
    _class_fields set [3, 0];
    _class_fields set [4, "JIM"]; _class_fields };


cl_typesqf_examples_Crowd_allworlds_PropIndex = 4;

cl_typesqf_examples_Crowd_getText = { params ["_class_fields", "_this"];
    (_class_fields select 1) };


cl_typesqf_examples_Crowd_getArray = { params ["_class_fields", "_this"];
    (_class_fields select 2) };


cl_typesqf_examples_Crowd_add = { params ["_class_fields", "_this"];
    params ["_count"];
    _class_fields set [3, (_class_fields select 3) + _count]; };


typesqf_examples_Crowd_BlowUpTank = { 
    params ["_tank"];
    hint "BOOM!";};