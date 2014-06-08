/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_frog;
if (life_inv_frog <= 0) exitWith { hint "You need frogs."; };

if (([false, "frog", _amount] call life_fnc_handleInv)) then {
	titleText["Boil frog legs ...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "froglegs", _amount] call life_fnc_handleInv)) then 
	{
		//player say3D "cooking";
		[player,"cooking"] call life_fnc_globalSound;
		titleText [format ["You made %1 frog legs.", _amount], "PLAIN"];
	};
};