//---------------------------------------
//03/14/14
//Michael Manis (___Pyro___)
//Removes a restrained civilian's weapons
//---------------------------------------
private ["_unit","_primary","_pistol","_launcher"];
_unit = _this select 0;
if (isNull cursorTarget) exitWith {hint "null cursorTarget";};
if (side _unit == west) exitWith {hint "cop unit";};
if(player == _unit) exitWith {hint "yourself?";};
if(!isPlayer _unit) exitWith {hint "not a player";};
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Cannot search that person.";};
if(currentWeapon _unit == "" && secondaryWeapon _unit == "" && handgunWeapon _unit == "") then
{
	hint "Player has no weapons!";
}
	else 
{
	_primary = primaryWeapon _unit;
	_pistol = handgunWeapon _unit;
	_launcher = secondaryWeapon _unit;
	if(_primary != "") then {_unit removeWeaponGlobal _primary; _primary = getText(_config >> "displayName");};
	if(_pistol != "") then {_unit removeWeaponGlobal _pistol; _pistol = getText(_config >> "displayName");};
	if(_launcher != "") then {_unit removeWeaponGlobal _launcher; _launcher = getText(config >> "displayName");};
	hint format ["Successfuly removed: \n%1\n%2\n%3",_primary,_pistol,_launcher];
	[[getPlayerUID _unit,name _unit,"484"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};