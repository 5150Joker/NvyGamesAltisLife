private["_uid","_name","_time","_reason","_msg"];

_uid = _this select 0;
_name = _this select 1;
_time = _this select 2;
_reason = _this select 3;

if((getPlayerUID player) != _uid) exitWith
{
	[[0,format["DBBAN >>> Something tried player '%1' to capture! Hack! <<<", name player]],"life_fnc_broadcast" ] call life_fnc_MP;
};

_msg = format["You have been banned from this server (Reason: %1)! Got to our website @ www.nvygames.com", _reason];

[[0,format["DBBAN >>> Player %1 has been banned (%2). <<<", name player, _reason]],"life_fnc_broadcast" ] call life_fnc_MP;

while { true } do 
{
	life_action_inUse = true;
	disableUserInput true;
	
	
	cutText[_msg,"BLACK FADED"];0 cutFadeOut 9999999;

	sleep 4;
};