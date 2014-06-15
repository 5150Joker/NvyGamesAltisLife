//Holsters the unit's weapons.
//Michael Manis (___Pyro___)
//-----------------------------------------------------------------------------------------------
private ["_unit","_holstered"];

//_id = _this select 2;
_unit = player;
_holstered = _this select 0;

if(_holstered && life_n_holstered) exitWith {hint "Already Holstered/Unholstered?";};
if  (player getVariable "restrained") exitWith {hint "You are restrained!";};
if (vehicle player != player) exitWith {hint "You are in a car!";};

if (_holstered) then
{
		[1,true] call life_fnc_sessionHandle;
		if (currentWeapon player == "") exitWith {hint "No weapons!";};
		A_weapon = primaryWeapon _unit;
		B_weapon = handgunWeapon _unit;
		
		A_weaponAttach = primaryWeaponItems _unit;
		B_weaponAttach = secondaryWeaponItems _unit;
		
		//_unit removeAction _id;
	
		A_mags = [];
		B_mags = [];
		_magazinesAmmoFull = magazinesAmmoFull _unit;
		
		for "_i" from 0 to ((count _magazinesAmmoFull)-1) do
		{
			_type = (_magazinesAmmoFull select _i) select 3;
			if(_type == 1) then 
			{
				A_mags = A_mags + [(_magazinesAmmoFull select _i) select 0];
			};	
			if(_type == 2) then 
			{
				B_mags = B_mags + [(_magazinesAmmoFull select _i) select 0];
			};				
		};
		
		B_mags = B_mags + [primaryWeaponMagazine _unit];
		A_mags = A_mags + [handgunMagazine _unit];
		A_count = _unit ammo A_weapon;
		B_count = _unit ammo B_weapon;
		
		_unit removeWeapon A_weapon;
		_unit removeWeapon B_weapon;
		
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 0.5;
		life_n_holstered = true;
}
else
{
	for "_i" from 0 to ((count A_mags)) do
	{
		_unit addMagazine (A_mags select _i);
	};
	for "_i" from 0 to ((count B_mags)-1) do
	{
		_unit addMagazine (B_mags select _i);
	};
		
	_unit addWeapon A_weapon;
	_unit setAmmo [primaryWeapon _unit, A_count];
		
	_unit addWeapon B_weapon;
	_unit setAmmo [handgunWeapon _unit, B_count];
		
	for "_i" from 0 to ((count A_weaponAttach)-1) do
	{
		_unit addPrimaryWeaponItem (A_weaponAttach select _i);
	};
	for "_i" from 0 to ((count B_weaponAttach)-1) do
	{
		_unit addPrimaryWeaponItem (B_weaponAttach select _i);
	};
		
	life_n_holstered = false;
};