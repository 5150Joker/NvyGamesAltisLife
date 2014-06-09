/**
*	godMode(BOOLEAN ebale)
*
*/

private ["_enable"];
_enable = _this select 0;

//GodMode
player allowDamage _enable;

//Hint + Infos
if( _enable ) then
{
	[[0,format["ADMIN: %1 has God-Mode on.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint "God-Mode on";
}
else
{
	[[0,format["ADMIN: %1 has God-Mode off.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint "God-Mode off";
};