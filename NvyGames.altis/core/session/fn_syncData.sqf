/*
	Copyright © 2013 Bryan "Tonic" Boardwine, All rights reserved
	See http://armafiles.info/life/list.txt for servers that are permitted to use this code.
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
_fnc_scriptName = "Player Synchronization";
private["_exit"];
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {hint "You have already used the synchronization option, you can only use them every 5 minutes.";};

switch (typeName life_fnc_MP_packet) do
{
	case "ARRAY":
	{
		if(count life_fnc_MP_packet == 0) exitWith
		{
			_exit = true;
		};
	};
	
	default {_exit = true;};
};

if(!isNil "_exit") exitWith {hint "Because some cheaters manipulate the BIS MP framework, they have stopped you while enjoying Atlis Life.\n\nYou can do it in a minute, try again, if you think it is a mistake.";};

[] call life_fnc_sessionUpdate;
hint "Synchronize player data.\n\nPlease wait for 20 seconds before you separate the connection.";
[] spawn
{
	life_session_time = true;
	sleep (5 * 60);
	life_session_time = false;
};
	