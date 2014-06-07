/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Modified by: KrisSerbia C

*/
private["_robber","_shop","_timer","_funds","_dist","_success"]; //Kraken Clean-up: added _dist and _success
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_timer = 300;//Time for the robbery to be completed
_funds = 10000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_dist = _robber distance _shop;//Distance beetwen the robber and the shop owner
_success = false; //Kraken Clean-up: set _success to false at the start of the script!

if(vehicle player != _robber) exitWith { hint "You need to exit your vehicle!"; }; //If the player is in a vehicle, kill the script execution with a message to the player | Kraken CLeanup - Moved to above the other conditions 
if (alive _robber && {currentWeapon _robber != ""} && {_funds > 0}) then {//Conditions met, open if | Kraken Cleanup - as Kris added the vehicle condition, it doesn't need to be in here!
hint format ["Robbing the gas station!Please Wait %1 sec.",_timer];
_shop switchMove "AmovPercMstpSsurWnonDnon";//Making a shop owner surrender
_shop removeAction _action;//Deleting the action,so it won't be spammed
while {true} do{ //Kraken Clean-Up: changed to while true do:

		hintsilent format ["%1 seconds remaining.Stay within 10 meters of a shop owner!",_timer];
		sleep 1;
		_timer = _timer - 1;
		_dist = _robber distance _shop;//Distance beetwen the robber and the shop owner
		if (!alive _robber) exitwith
			{
				//If the robber dies, kill the script
				hint "Robbery failed because you died!";
				_shop switchMove "";
				_action = _shop addAction["Rob the Gas Station",life_fnc_robShops];
			};
			if (_dist >= 11) exitwith {//Test if robber didn't stay within 10 meters of a shop owner
			hint "Robbery failed, You moved too far away";
			_shop switchMove "";
			_action = _shop addAction["Rob the Gas Station",life_fnc_robShops];
			
			
		};
if(_timer < 1) exitWith { _success = true;}; //Kraken Cleanup - If the count-down has hit 0 (or -1..just in case) the robbery is a success!
};
if(!_success) exitWith {}; //Kraken Cleanup -If success is false, kill it! They've already got their message
life_cash = life_cash + _funds; //Self explanatory
hint format["You have stolen $%1",_funds]; //Give them a nice message
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;//Add the robber to the wanted list,thanks to DimitryYuri

_shop switchMove "";//Reseting the shop owner
_funds = 0;
sleep 420;//Cooldown between the robberies
_action = _shop addAction["Rob the Gas Station",life_fnc_robShops];//Adding action for the robbery
};//Close the if statement