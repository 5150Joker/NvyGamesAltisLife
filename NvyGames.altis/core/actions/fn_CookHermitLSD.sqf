/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_frog;
if (life_inv_frog <= 0) exitWith { hint "You need frogs."; };

if (([false, "frog", _amount] call life_fnc_handleInv)) then {
	titleText["Cook LSD from frogs ...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "froglsd", _amount] call life_fnc_handleInv)) then 
	{
		//player say3D "drugcooking";
		[player,"drugcooking"] call life_fnc_globalSound;
		titleText [format ["You made %1 LSD.", _amount], "PLAIN"];
	};
};