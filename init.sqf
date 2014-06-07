enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.2";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";

};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "admintools\Activate.sqf";
[] execVM "scripts\gas\gasmask.sqf";
[] execVM "scripts\gas\teargas.sqf";
[] execVM "scripts\gas\teargasGL.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
[] execVM "scripts\jump.sqf";
[] execVM "scripts\civ_cop_kill.sqf";
if(!StartProgress) then
{
	[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;
0 = execVM "IgiLoad\IgiLoadInit.sqf";