object["_unit","_caller"];
_unit = [_this, 1, objNull] call BIS_fnc_param;
_caller = [_this, 0, objNull] call BIS_fnc_param;
if(isNil "_unit") exitWith {};

_caller setPos (getPos _unit);


hint "Teleported To Player";