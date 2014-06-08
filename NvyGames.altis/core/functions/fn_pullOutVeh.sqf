/*
	File: fn_pullOutVeh.sqf
	Author: Bryan "Tonic" Boardwine
*/
if((vehicle player == player)) exitWith {};
if(player getVariable ["restrained", false]) then
{
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
};

player action ["Eject", vehicle player];
titleText["You were pulled out of the vehicle!","PLAIN"];
titleFadeOut 4;