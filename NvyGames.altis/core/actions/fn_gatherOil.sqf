/*
	File: fn_gatherOil.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers oil, needs to be revised and changed.
*/
private["_sum"];
_sum = ["oilu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_in_use = true;
	titleText["Collect oil ...","PLAIN"];
	sleep 4;
	if(([true,"oilu",_sum] call life_fnc_handleInv)) then
	{
		titleText["You've collected some oil.","PLAIN"];
	};
}
	else
{
	hint "Full inventory.";
};

life_action_in_use = false;