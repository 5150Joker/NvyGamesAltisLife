/*
File: fn_gatherGrapes.sqf

Author: Unknown

Description:
Grape Picking Function

*/
private["_sum"];
_sum = ["grapes",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_inUse = true;
titleText["Picking Grapes...","PLAIN"];
titleFadeOut 2;
sleep 2;
if(([true,"grapes",_sum] call life_fnc_handleInv)) then
{
titleText["You have gathered some Grapes.","PLAIN"];
playSound "\sounds\bag.ogg"; // this only if you want the sound for the bag when you gather it 
};
};

life_action_inUse = false;