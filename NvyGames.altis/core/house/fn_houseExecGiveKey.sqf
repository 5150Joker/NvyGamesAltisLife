/*

	Executed by database

*/

private["_house_name","_house_args","_house_data"];

_house_name = _this select 0; //Select argument
_house_args = _this select 1;
_house_data = _this select 2;

life_action_inUse = false;

hint format["The player %1 can now access your home.", _house_args select 0];