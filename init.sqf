
sleep 2;

fnc_pwrotate = {
	private _turntable = createVehicle [ "Land_Can_V3_F", _this select 0, [], 0,  "CAN_COLLIDE"];
	_turntable hideObject true;

	private _holder = createVehicle ["WeaponHolderSimulated", _this select 0, [],	0, "CAN_COLLIDE"];
	_holder addWeaponCargoGlobal [_this select 1, 1];
	_holder attachTo [_turntable, [0,-0.63,0.7]];
	_holder setVectorDirAndUp [[0,0,1],[0,-1,0]];
	_holder addAction ["<t color='#FF0000'>This Useless Action Is RED</t>", {hint "RED"}];
	
	private _time = time + 10;
	private _dir = getDir _turntable;
	waitUntil {
		_dir = _dir + ( if (_dir > 360) then [{-360},{3}]);
		_turntable setDir _dir;
		time > _time
	};

	//deleteVehicle _holder;
	//deleteVehicle _turntable;
	clearItemCargoGlobal _holder;
};

_null = [player modelToWorld [0,2,0],"arifle_Mk20_ACO_pointer_F"] spawn fnc_pwrotate;

/*_boxes = "Land_Pallet_MilBoxes_F" createVehicle position player;
_cargo = "Supply500" createVehicle [0,0,0];
_cargo attachTo [_boxes, [0,0,0.85]];

// optional for objects that can take damage
_boxes addEventHandler ["Killed", 
{
	{
		detach _x, 
		deleteVehicle _x;
	} 
	forEach attachedObjects (_this select 0);
}];*/