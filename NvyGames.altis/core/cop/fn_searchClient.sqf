/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
	
	
	+ ##57 Entfernt illegale Waffen
*/
private["_cop","_inv","_var","_val","_robber","_primary","_launcher","_pistol","_weapons","_policeitems"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_inv = [];
_weapons = [];
_robber = false;

_licenses = "";

//Unholster weapons
//Unholster ##112
if(life_n_holstered) then
{
	[false] call life_fnc_holsterWeapons;
};

//Illegal items
{
	_var = [_x select 0,0] call life_fnc_varHandle;
	_val = missionNamespace getVariable _var;
	if(_val > 0) then
	{
		_inv set[count _inv,[_x select 0,_val]];
	};
	missionNamespace setVariable[_var,0];
} foreach life_illegal_items;

//Policed items
{
	_var = [_x select 0,0] call life_fnc_varHandle;
	_val = missionNamespace getVariable _var;
	if(_val > 0) then
	{
		_policeitems set[count _policeitems,[_x select 0,_val]];
	};
	missionNamespace setVariable[_var,0];
} foreach life_police_only_items_bounty;

if(_licenses == "") then {_licenses = "No licenses and skills<br/>"};



//Illegal weapons block
/*_primary = primaryWeapon player;
_launcher = secondaryWeapon player;
_handgun = handGunWeapon player;

if(_primary in life_illegalweapons) then
{
	_weapons set [count _weapons, _primary];
	player removeWeaponGlobal _primary; 
};
if(_launcher in life_illegalweapons) then
{
	_weapons set [count _weapons, _launcher];
	player removeWeaponGlobal _launcher; 
};
if(_handgun in life_illegalweapons) then
{
	_weapons set [count _weapons, _handgun];
	player removeWeaponGlobal _handgun; 
};*/

if(currentWeapon _unit == "") then
{
	hint "Player has no weapons!";
}
	else 
{
	_primary = primaryWeapon _unit;
	_launcher = secondaryWeapon _unit;
	_pistol = handgunWeapon _unit;
	if (_primary in life_illegalWeapons) then { _unit removeWeaponGlobal _primary; _weapons set [count _weapons,_primary]; };
	if (_pistol in life_illegalWeapons) then { _unit removeWeaponGlobal _pistol; _weapons set [count _weapons,_pistol]; };
	if (_launcher in life_illegalWeapons) then { _unit removeWeaponGlobal _launcher; _weapons set [count _weapons,_launcher]; };
	_primary = getText(configFile >> "CfgWeapons" >> _primary >> "displayName");
	_pistol = getText(configFile >> "CfgWeapons" >> _pistol >> "displayName");
	_launcher = getText(configFile >> "CfgWeapons" >> _launcher >> "displayName");
	hint format ["Successfuly removed \n%1\n%2\n%3",_primary,_pistol,_launcher];
};


//End illegal weapons block


if(!life_use_atm) then 
{
	life_cash = 0;
	_robber = true;
};

[[player,_inv,_robber,_weapons,_policeitems],"life_fnc_copSearch",_cop,false] spawn life_fnc_MP;