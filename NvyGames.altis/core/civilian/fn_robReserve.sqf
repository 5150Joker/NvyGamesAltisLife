/*
	File: fn_robReserve.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for robbing the federal reserve.
*/
private["_vault","_funds","_timer","_toFar"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = [_this,1,-1,[0]] call BIS_fnc_param;
_toFar = false;

if(isNull _vault OR _funds == -1) exitWith {}; //Bad data
if(player distance _vault > 10) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "You have to stay close to the vault!"};

if(_funds < 50000) exitWith{[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "The bank has not enough credit ...";};

_timer = time + (10 * 60); //Default timer is 10 minutes to rob.
titleText["Knacke den Safe ...","PLAIN"];
[[2,"$$$ THE FEDERAL RESERVE IS BEING ROBBED!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;

//##87
//_vault say3D "bankalarm";
[_vault,"bankalarm"] call life_fnc_globalSound;


while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["You have to keep up to 15m distance!\n\nRemaining time:\n %1\n\nDistanz: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 15) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
};

switch(true) do
{
	case (_toFar):
	{
		hint "You've too far from safe! Bank robbery failed!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "You died! Bank robbery failed!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "You were stunned! Bank robbery failed!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["You have successfully $%1 robbed!\n\nTo prevent tracing, you can use 8min long no ATMs.",[_funds] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 480;
			life_use_atm = true;
		};
		life_cash = life_cash + _funds;
		[[_vault,1,_funds],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
};