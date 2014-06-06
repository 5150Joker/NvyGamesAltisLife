/*
File: fn_gatherGoldbar.sqf

Author: Unknown

Description:
Gold Salvage Function

*/
private["_sum"];
_sum = ["goldbarp",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_inUse = true;
titleText["Salvage Gold Bar...","PLAIN"];
titleFadeOut 2;
sleep 2;
if(([true,"goldbarp",_sum] call life_fnc_handleInv)) then
{
playSound "\sounds\gold.ogg"; // this only if you want the sound for the bag when you gather it 
titleText["You have Salvaged Gold Bar.","PLAIN"];
};
};

life_action_inUse = false;