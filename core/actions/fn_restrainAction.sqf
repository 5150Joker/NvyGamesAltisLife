/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine and beefed up by ___Pyro___ (zipties)
	
	Description:
	Retrains the target.
*/
private["_unit","_side"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
_side = side player;
//Broadcast!
if (side player == civilian) then {
	if(life_inv_ziptie < 1) exitWith {hint"You cannot restrain someone without a ziptie!"};
	life_inv_ziptie = life_inv_ziptie - 1;
};
_unit setVariable["restrained",true,true];
//life_is_arrested = true;
[[player,_side], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
if (side player == west) then { [[0,format["%1 was restrained by %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };