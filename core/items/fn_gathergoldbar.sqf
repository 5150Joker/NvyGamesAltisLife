/*
File: fn_gathergoldbar.sqf

Description:
Salvage goldbar
*/
private["_sum"];
_sum = ["goldbar",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Gathering Goldbars...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"goldbar",1] call life_fnc_handleInv)) then
{
playSound "\sounds\bag.ogg"; // this only if you want the sound for the bag when you gather it 
titleText["Gathered 1 Goldbars.","PLAIN"];
};
};

life_action_in_use = false;