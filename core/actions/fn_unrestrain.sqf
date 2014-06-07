/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

if (side player != west) then
{
	if(life_inv_knife < 1) exitWith {hint"You need a pocket knife to break restraints!"};
		life_inv_knife = life_inv_knife - 1;
		hint "The pocket knife snapped, but the restraints were broken!";
};
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;

if (side player == west) then {[[0,format["%1 was unrestrained by %2",name _unit, name player]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;};