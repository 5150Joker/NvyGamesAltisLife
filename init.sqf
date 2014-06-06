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

//by psycho
["%1 --- Executing TcB AIS init.sqf",diag_ticktime] call BIS_fnc_logFormat;
enableSaving [false,false];
enableTeamswitch false;


// TcB AIS Wounding System --------------------------------------------------------------------------
if (!isDedicated) then {
	TCB_AIS_PATH = "ais_injury\";
	{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});		// execute for every playable unit
	
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (units group player);													// only own group - you cant help strange group members
	
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach [p1,p2,p3,p4,p5];														// only some defined units
};
// --------------------------------------------------------------------------------------------------------------

