//fn_rigCar.sqf
//___Pyro___ (Michael Manis)
//Sets up the 
//-------------------------------------------------------------
private["_vehicle","_locked"];
_vehicle = cursorTarget;
_locked = locked _vehicle;
if(_locked == 0) then
{
	life_action_inUse = true;
	hint "re-wiring engine...";
	life_inv_autoTool = life_inv_autoTool - 1;
	[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 10;
	life_action_inUse = false;
	bombTarget = _vehicle;
	detAction = player addAction["Detonate Car",life_fnc_carBomb,"",0,false,false,"",
		'alive player && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")'];


	while {alive _vehicle} do
	{
		[[_vehicle, "beep",20],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;		
		sleep 3.4;
	};
}
else {systemChat "I can't tamper with the engine if I can't pop the hood. The car must be unlocked...";};