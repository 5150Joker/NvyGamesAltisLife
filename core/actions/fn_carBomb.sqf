//fn_carBomb.sqf
//___Pyro___ (Michael Manis)
//Creates a griefing machine
//-------------------------------------------------------------
if((player distance bombTarget < 50)) then
{
	playSound ["dial",true];
	sleep 3.5;
	bomb="M_Mo_82mm_AT_LG" createVehicle (getPos bombTarget);
	bomb="M_Mo_82mm_AT_LG" createVehicle (getPos bombTarget);
	bomb="M_Mo_82mm_AT_LG" createVehicle (getPos bombTarget);
	bombTarget setDamage 1;
	bombTarget = " ";
	player removeAction detAction;
}
else {systemChat "I can't get a signal!";};