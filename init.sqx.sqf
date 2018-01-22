call compile preprocessFileLineNumbers "classes\crowd.sqx.sqf";



private ["_crowd"];

sleep 3;

_crowd = ("" call cl_typesqf_examples_Crowd_constructor);

sleep 3;

hint format ["%1", ([_crowd, []] call cl_typesqf_examples_Crowd_getText)];

sleep 3;

hint format ["%1", (_crowd select 4)];

sleep 3;

hint format ["%1", typesqf_examples_Crowd_BlowUpTank];