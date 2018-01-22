




























cl_tank_tank_constructor = { private "_class_fields"; _class_fields = [["tank_tank", []]];
    params ["_spawnPos"];

    _class_fields set [2, _spawnPos];
    _class_fields set [1, objNull];
    ([_class_fields, []] call cl_tank_tank_Respawn); _class_fields };



cl_tank_tank_Status_PropIndex = 3;



cl_tank_tank_Respawn = { params ["_class_fields", "_this"];
    if (!isNull (_class_fields select 1)) then {

        {
            deleteVehicle _x;
        } forEach crew (_class_fields select 1);

        deleteVehicle (_class_fields select 1); };


    _class_fields set [1, "B_MBT_01_cannon_F" createVehicle (_class_fields select 2)];
    createVehicleCrew (_class_fields select 1);
    _class_fields set [3, "IDLE"]; };






cl_tank_tank_AttackPosition = { params ["_class_fields", "_this"];
    params ["_position"];
    private ["_waypoint"];

    _waypoint = (group (_class_fields select 1)) addWaypoint [_position, 0];
    _waypoint setWaypointType "SAD";
    _waypoint setWaypointBehaviour "COMBAT";

    _class_fields set [3, "ATTACKING"]; };