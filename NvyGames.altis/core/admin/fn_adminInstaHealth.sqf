/**
*	instaHealth(BOOL health, food, water)
*
*/



private ["_health", "_food", "_water"];
_health = _this select 0;
_food = _this select 1;
_water = _this select 2;

if((call life_adminlevel) < 1) exitWith {};



if(_health) then
{
	[[0,format["ADMIN: %1 has on health 100 set.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

	player setDamage 0;
	player setFatigue 0;
};

if(_food) then
{
	[[0,format["ADMIN: %1is hungry for 100 set.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

	life_hunger = 100;
	player setFatigue 0;
};

if(_water) then
{
	[[0,format["ADMIN: %1 has thirst for 100 set.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	
	life_thirst = 100;
	player setFatigue 0;
};


/////////////Hints
if(_health) then
{
	hint "in 100 set.";
	sleep 2;
};

if(_food) then
{
	hint "hunger 100 set.";
	sleep 2;
};

if(_water) then
{
	hint "thirst for 100 set.";
};

